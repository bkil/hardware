# Ingyenes számítás a felhőben

Vannak szolgáltatók aki bizonyos próbaidőre (1 hónap vagy 1 év) vagy pedig korlátlanul biztosítanak regisztráció és/vagy bankszámla ás/vagy bankkártya megadás után számítási kapacitásokat.

Ezeket összeadva már számmottevő hozzájárulást lehetne tenni. Jó lenne ezt bemérni és jobban hirdetni.

## Korlátlan VM

### Google Cloud Platform

* https://cloud.google.com/free
  * korlátlanul: Compute Engine f1-micro: 1 CPU (20%), 0.6GB RAM, 1GB/hó outbound, +30GB HDD
  * serverless: Cloud Functions 2M/hó
* bankkartyaszám vagy bankszámlaszám szükséges
* https://www.reddit.com/r/BOINC/comments/3756wg/use_the_300_credit_from_googlecloudcompute_for/
* **$300 ingyen credit 12 hónapra**

### Oracle Cloud

* https://www.oracle.com/cloud/free/#free-cloud-trial
  * korlátlanul: 2 * VM.Standard.E2.1.Micro Free: 1/8 OCPU (2 vCPU), AMD EPYC 7551, 1GB RAM, max. 200GB block volume, 10TB/hó outbound
  * korlátlanul: 4 * ARM-based Ampere A1 cores, 24GB RAM, usable as one VM or up to 4 VMs
    * 2 block volume storage, öszesen 200GB
* **$300 ingyen kredit 30 napra**
  * max. 8 gép párhuzamosan

## 1 évre VM

### Alibaba Cloud

* https://www.alibabacloud.com/campaign/free-trial
  * 12hónap ECS Burstable Type t5 1 mag 1GB (vagy 3 hónap 2 mag 2GB), 40GB SSD, "1MB Internet bandwidth" (1MB/hó?)
  * korlátlanul: Function Compute 1M/hó (400TB*sec/hó)

### Amazon AWS

* https://aws.amazon.com/free/
  * 750 óra (kb. 30 nap) Lightsail VPS: 1 CPU, 512MB RAM, 1TB/hó outbound az első naptári hónapon belül
  * 12 hónap EC2 VM, 750óra/hó: t3.micro, 2 CPU (részben), 1GB/hó outbound (CloudFront ingyenes), 1GB RAM, + 30GB EBS
    * https://aws.amazon.com/ec2/pricing/on-demand/
  * serverless: AWS Lambda, 1M/hó (3.2Msec/hó)
  * 12 hónap: 50GB/hó Cloudfront transfer out, 2M request/hó
* bankkártyaszám szükséges
* https://boinc.berkeley.edu/trac/wiki/CloudServer
* Időnként webinarok mellett osztogatnak ingyen creditet

### atlantic.net

* https://www.atlantic.net/
  * 12hónap: G3.2GB Cloud VPS, 1 vCPU, 2GB RAM, 50GB SSD block storage, 3TB/hó forgalom
  * USA-EAST-1 (Orlando, FL), USA-EAST-2 (New York City, NY), USA-EAST-3 (Ashburn, VA), USA-WEST-1 (San Francisco, CA), CANADA-EAST-1 (Toronto, ON)
* valószínűleg szükséges: bankkártyaszám, telefonszám, cím

### Microsoft Azure

* https://azure.microsoft.com/en-us/free/
  * 12 hónap B1S VM, 750óra/hó: 1 CPU (részben), 1GB RAM, 5GB/hó outbound, +64GB*2 SDD
    * https://azure.microsoft.com/en-us/pricing/details/bandwidth/
  * serverless: Functions 1M/hó
* bankkártyaszám szükséges
* **$300 ingyen credit 30 napra**

## 30 napra VM

### IBM

* https://www.ibm.com/cloud/free
* 30 nap Hyper Protect Virtual Server Free: 1 vCPU, 2GB RAM, 250GB/hó outbound, +50GB HDD
* https://www.ibm.com/cloud/bandwidth
  * > 250 GB is included with each monthly virtual server
* pl. Virtual Server C1.32x32 32GB RAM, 32-core, $0.27/h, 25GB SAN, 250GB/hó outbound (vagy 0GB/hó, nehéz értelmezni)
* bankkártyával sokkal többet ad, de mintha anélkül is lenne valami
* **$200 ingyen credit 30 napra**

### Kamatera

* https://www.kamatera.com/express/compute/resources.php?id=how_it_works&code=1
  * pl. $100/hó General Purpose 6 vCPU, 6GB RAM, 40GB SSD
  * pl. $100/hó General Purpose 8 vCPU, 2GB RAM, 20GB SSD
  * pl. $100/hó Dedicated 4 vCPU, 2GB RAM, 20GB SSD
  * 5TB/hó Internet Traffic
  * 30 napra: 1TB outbound, 1TB Cloud Block Storage
* **max. $100 ingyen kredit (1db Cloud Server) 30 napra**

### OVHcloud

* https://www.ovhcloud.com/asia/public-cloud/prices/
  * b2-7 $26.4+GST/hó, 2 vCore, 7GB RAM, 50GB SSD, 1TB egress
  * https://www.ovh.com/asia/lp/public-cloud-trial/
    * bankkártya vagy PayPal
    * **$33 ingyen credit 1 hónapra**

### VPSWala

* https://vpswala.org/linux-vps.html
  * 1hónap: 1vCPU, 25GB SSD, 1GB RAM, 1TB/hó átvitel

## Rugalmas kuponos

### Civo

* https://www.civo.com/pricing
  * XSmall $5/hó+VAT 1 vCPU, 1GB RAM, 25GB SSD, 1TB transfer
  * 7 napon belül kell bankkártyát megadni
  * **$50 ingyen IaaS credit 1 hónapra**

### Digital Ocean

* https://try.digitalocean.com/freetrialoffer/
  * https://www.digitalocean.com/community/questions/is-there-free-trial-available
  * https://www.digitalocean.com/pricing/
  * Standard Droplet: $5/hó 1GB RAM 1vCPU, 1TB/hó transfer, 25GB SSD
  * https://docs.cloud.oracle.com/en-us/iaas/Content/Compute/References/computeshapes.htm
* bankkártyaszám szükséges
* **elérhető $100 (60 napra) ingyen credit kupon** (régebben $50-100 12 hónapra)

### Vultr

* https://www.vultr.com/promo/try50/
  * pl. $6/hó High Frequency Compute, 32GB SSD, 1CPU, 1GB RAM, 1TB/hó transfer
  * pl. $24/hó High Frequency Compute, 128GB SSD, 2CPU, 4GB RAM, 3TB/hó transfer
  * pl. $10/hó 1CPU, 2GB RAM, 2TB/hó transfer, 55GB SSD
* **$50 ingyen credit**

## VM kupon csak feltöltés mellé

### Linode

* https://www.linode.com/pricing/
  * pl. Nanode VM $5/hó 1GB RAM 1 vCPU, 25GB SSD, 1TB transfer
  * pl. dedicated $30/hó 4GB RAM, 1 CPU, 80GB SSD, 4TB transfer
* **$20-$100 credit kupon 90 napra**, talán $5 feltöltés kötelező

### UpCloud

* https://upcloud.com/pricing/
  * pl. $5/hó 1GB RAM, 1 vCPU, 25GB storage, 1TB transfer
  * 3 nap free trial (az $5-os gépre)
* **$50 credit kupon** $10 feltöltés mellé

## VM rövidebb időre

### CloudAtCost

* https://members.cloudatcost.com/order.php?step=1&productGroup=28&product=166
  * 48 óra: 8 vCPU, 8GB RAM, 10GB NVMe
  * https://cloudatcost.com/terms-of-service

> 10.5 In the event of abusive activity CloudatCost will take action shutting down a users server to protect the other customers. This may occur in the following situations..
>
> 10.5.2 any server which CPU (%) equals 100% for 30 minutes;

### DediSERVE

* https://www.dediserve.com/free-trial
  * 72óráig ingyenes "Cloud Resources", 2GB bandwidth

## Nem ideális

## Függvény jellegűek

### Google App Engine

* https://cloud.google.com/appengine/quotas
  * korlátlanul/serverless: standard environment, 28h/nap frontend class (2.4GHz, 2GB RAM), 9h/nap backend class (4.8GHz, 2GB RAM), 1GB traffic ingyen
  * nem biztos, hogy reálisan átfordítható a BOINC rá

### Google Cloud Run

* https://cloud.google.com/run/
  * serverless: 2M/hó (50h/hó számítás, kb. 2GB RAM)

### fly.io

* https://fly.io/docs/about/pricing/
  * korlátlanul?
  * 8,436,960 shared-cpu-1x másodperc/hó (3 VM 24/7)
  * 100GB/hó kimenő forgalom

### Heroku

A következő pont vonatkozik rá a felhasználási feltételek szerint, bár ha ez nem volna akkor is elég körülményes volna futtatni rajta (előre becsomagolni a binárisokat, 25secenként snapshotolni, adatbázisba írni a checkpointot)

* https://www.heroku.com/policy/aup

> Prohibited Actions
> ...
> 11. Interfere with other users' enjoyment of the Service;

## Benchmark

### AWS, Azure, GCP, Oracle

* https://blog.51sec.org/2019/03/free-tier-vps-bench-comparison-for-aws.html
* https://github.com/n-st/nench

### DigitalOcean vs. Linode vs. Vultr vs. OVH vs. Scaleway

* https://www.webstack.de/blog/e/cloud-hosting-provider-comparison-2017/

### LetBox

* https://www.lowendtalk.com/discussion/114358/another-letbox-kvm-vps-free-trial-review
