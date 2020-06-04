# GUI install

desktop - install - Install applications - Puppy Packages Manager:

* `boinc-client`
* `boinctui`
* `nano-tiny`
* `dropbear`

Enable easier ssh access from your computer, so some of the steps can be done remotely (maybe even a few of the former ones via `ssh -X`):

```
cat ~/.ssh/id_rsa.pub |
ssh puppy-1 "mkdir -p .ssh; tee -a .ssh/authorized_keys"
```

Setup screen:

* US layout
* GMT+1

desktop - setup - Mouse/Keyboard - Advanced - Layout Variants:

* ... choose your preferred variant

Do a frugal install to a pendrive, SD card or HDD partition.

* *TODO: at which point?*

# Tweaking over SSH

## Second service

I used 2 `boinc-client` folders because I can configure them easier separately. Feel free to omit instructions relating to the second one.

```
service boinc-client disable
adduser boinc
mkdir -p /mnt/boinc/
ln -st /var/lib/ /mnt/boinc/boinc-client /mnt/boinc/boinc-client2
```

To enable running 2 boinc clients at the same time, we need to separate their settings related to ports, the PID file, logs and the data directory. I edited this one:
* `/etc/default/boinc-client`

And also made a separate tweaked copy for the second client here:
* `/etc/init.d/boinc-client2`

I added the port number of the second client to the config file of boinc TUI:
* `~/.boinctui.cfg`

## rc.local boot script

```
cat <<EOF >> /etc/rc.local
# Power down HDD after 15min
hdparm -S 240 /dev/sda

killall cupsd bluetoothd

# Reduce MMU load

echo always > /sys/kernel/mm/transparent_hugepage/defrag
echo always > /sys/kernel/mm/transparent_hugepage/enabled
echo always > /sys/kernel/mm/transparent_hugepage/shmem_enabled

# Reduce disk cache use

sysctl vm.swappiness=100

# Set up compressed swap device

modprobe coretemp
modprobe zram num_devices=3
#zramctl -f -s 1500MB -a lz4 -t 2
zramctl -f
echo 1 > /sys/block/zram0/reset
echo 4 > /sys/block/zram0/max_comp_streams
echo deflate > /sys/block/zram0/comp_algorithm
echo 4100000000 > /sys/block/zram0/disksize # size in bytes
mkswap /dev/zram0
swapon --discard --priority=5 /dev/zram0

# Only needed if you plan to run from a RAM-disk

zramctl -f
echo 1 > /sys/block/zram1/reset
echo 4 > /sys/block/zram1/max_comp_streams
echo deflate > /sys/block/zram1/comp_algorithm
echo 4300000000 > /sys/block/zram1/disksize
mkfs.ext4 -J size=4 -m 0 /dev/zram1
mkdir -p /mnt/boinc
mount -o discard,data=writeback,noatime,barrier=0,commit=60 /dev/zram1 /mnt/boinc/

# Now copy back your backup if you have any

time rsync -az nas:puppy-1/ m:/mnt/boinc/
chown -R boinc:boinc /mnt/boinc/
service boinc-client start
service boinc-client2 start

# This only works after you patch madvise()

echo 1 > /sys/kernel/mm/ksm/run
EOF

chmod +x /etc/rc.local
```

## Text-only boot

Boot to text-only, pendrive-residing mode by default to same some RAM:

* Add a boot entry at the top:
* `nano-tiny /initrd/mnt/dev_save/grub.cfg`
* `linux /vmlinuz pfix=nocopy,nox pmedia=cd consoleblank=60`
* If you have a HDD that you want to turn off, you'll need to tweak this and your save file a bit.

## BOINC settings

```
for i in "" 2; do
 # Disable x86 and optionally hide hostname from private account overview (extra paranoid).

cat <<EOF > /var/lib/boinc-client$i/cc_config.xml
<cc_config>
  <log_flags>
    <task>1</task>
    <file_xfer>1</file_xfer>
    <sched_ops>1</sched_ops>
  </log_flags>
  <options>
    <no_alt_platform>1</no_alt_platform>
    <ignore_intel_dev>0</ignore_intel_dev>
<!--    <suppress_net_info>1</suppress_net_info> -->
  </options>
</cc_config>
EOF

 # This will be pinged periodically for network availability
cat <<EOF > /var/lib/boinc-client$i/nvc_config.xml
<nvc_config>
  <network_test_url>http://fsf.hu/</network_test_url>
</nvc_config>
EOF

 # Create your account if you aren't restoring from a backup.
 # Copy & paste your weak account key from the `Account keys` page:
 # https://boinc.bakerlab.org/rosetta/weak_auth.php

cat <<EOF > /var/lib/boinc-client$i/account_boinc.bakerlab.org_rosetta.xml
<account>
    <master_url>https://boinc.bakerlab.org/rosetta/</master_url>
    <authenticator>...</authenticator>
</account>
EOF
done
```
