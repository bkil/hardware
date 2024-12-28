# Ingyenes számítás a felhőben

Vannak szolgáltatók aki bizonyos próbaidőre (1 hónap vagy 1 év) vagy pedig korlátlanul biztosítanak regisztráció és/vagy bankszámla ás/vagy bankkártya megadás után számítási kapacitásokat.

Ezeket összeadva már számmottevő hozzájárulást lehetne tenni. Jó lenne ezt bemérni és jobban hirdetni.

## Korlátlan VM

### BoxyBSD

* https://boxybsd.com/services/CodeNerve.txt
* https://boxybsd.com/signup-vps/CodeNerve.txt
* https://boxybsd.com/faq/CodeNerve.txt
* https://boxybsd.com/contact/CodeNerve.txt
* https://boxybsd.com/CodeNerve.txt
* https://boxybsd.com/sponsors/CodeNerve.txt
* 1 vCPU, 10GB HDD, 1GB RAM, IPv6 /64 (/48)
* 0 IPv4
* freebsd, openbsd, netbsd

> for individuals who want to learn and practice on BSD based systems but also for opensource projects

### Google Cloud Platform

* https://cloud.google.com/free
  * korlátlanul: Compute Engine f1-micro: 1 CPU (20%), 0.6GB RAM, 1GB/hó outbound, +30GB HDD
  * serverless: Cloud Functions 2M/hó
* bankkartyaszám vagy bankszámlaszám szükséges
* https://www.reddit.com/r/BOINC/comments/3756wg/use_the_300_credit_from_googlecloudcompute_for/
* **$300 ingyen credit 12 hónapra**
  * GitLab regisztrációval Kubernetes integrációhoz +$200
  * https://about.gitlab.com/blog/2018/04/24/getting-started-gitlab-ci-gcp/

### Oracle Cloud

* https://www.oracle.com/cloud/free/#free-cloud-trial
  * korlátlanul: 2 * VM.Standard.E2.1.Micro Free: 1/8 OCPU (2 vCPU), AMD EPYC 7551, 1GB RAM, max. 200GB block volume, 10TB/hó outbound
  * korlátlanul: 4 * ARM-based Ampere A1 cores, 24GB RAM, usable as one VM or up to 4 VMs
    * 2 block volume storage, öszesen 200GB
* **$300 ingyen kredit 30 napra**
  * max. 8 gép párhuzamosan

### euserv

* https://www.euserv.com/en/virtual-private-server/root-vserver/v2/vs2-free.php
  * korlátlanul: 1 1GHz 64-bit CPU, 1GB RAM, 10 GB HDD, 0 IPv4, 1 IPv6, 1 TB/hó forgalom (afelett 1 Mbit/s)
  * Linux Containers

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

### Clouding

* https://clouding.io/en/
* 5 EUR/hó: 0.5vCPU, 1GB RAM, 25GB NVMe SSD
* **5 EUR ingyen kredit**

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

### Railway.app

* https://docs.railway.app/reference/pricing/free-trial
* 500MB RAM, 1 osztott vCPU, adatbázis
* $5 ingyen kredit
* alacsony terhelés mellett akár több hónapra is elegendő
* RAM $10/GB/hó (percenként), CPU $20/vCPU/hó (percenként), hálózat egress $0.1/GB
* aktív GitHub fiókkal hitelesít, de nem kér hitelkártyát

### VPSWala

* https://vpswala.org/linux-vps.html
  * 1hónap: 1vCPU, 25GB SSD, 1GB RAM, 1TB/hó átvitel

## Rugalmas kuponos

### Civo

* https://www.civo.com/pricing
  * XSmall $5/hó+VAT 1 vCPU, 1GB RAM, 25GB SSD, 1TB transfer
  * 7 napon belül kell bankkártyát megadni
  * **$50 ingyen IaaS credit 1 hónapra**

### Lunanode

* https://www.lunanode.com/
* **$20 ingyen credit kupon** https://toys.lerdorf.com/low-cost-vps-testing#lunanode

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
* **$20-$100 credit kupon 60-90 napra**, talán $5 feltöltés kötelező

### UpCloud

* https://upcloud.com/pricing/
  * pl. $5/hó 1GB RAM, 1 vCPU, 25GB storage, 1TB transfer
  * 3 nap free trial (az $5-os gépre)
* **$50 credit kupon** $10 feltöltés mellé
* **$25 credit kupon** https://toys.lerdorf.com/low-cost-vps-testing#upcloud

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

### ruvds

* https://ruvds.com/en-usd/test_period
  * 4 vCPU (3.4GHz, Intel Xeon, "Powerful"), 8GB RAM (DDR4 ECC), 30GB NVMe SSD, IPv4, korlátlan forgalom
* **72 óra próbaidő max 3000 rúpia értékben ($60)**
  * számlázás beállítása és SMS megerősítés szükséges

### vpsserver

* https://www.vpsserver.com/
* 1 nap próbaidő bankkártya nélkül
* 7 nap próbaidő bankkártyával

## Nem ideális

### Yandex Cloud

* Jelen pillanatban nem elérhető Magyarországon, és Oroszországon kívül csak üzleti felhasználóknak
 * https://cloud.yandex.com/en/docs/billing/qa/non-resident
* https://cloud.yandex.com/en/docs/free-trial/
  * https://cloud.yandex.com/en/docs/free-trial/concepts/usage-grant
  * max. 60 napra
  * számlázás beállítása szükséges
  * átutalásos számlázásnál: $15 Yandex Compute Cloud céljára, $35 egyéb Yandex.Cloud kiadásokra
  * bankkártyás számlázásnál: $50 szabadon felhasználható
* https://cloud.yandex.com/en/docs/billing/concepts/serverless-free-tier
  * korlátlanul
  * serverless: Cloud Functions
  * 1GB/hó Serverless Yandex Database
  * 1GB/hó Yandex Object Storage

## Függvény jellegűek

### Google App Engine

* https://cloud.google.com/appengine/quotas
  * korlátlanul/serverless: standard environment, 28h/nap frontend class (2.4GHz, 2GB RAM), 9h/nap backend class (4.8GHz, 2GB RAM), 1GB traffic ingyen
  * nem biztos, hogy reálisan átfordítható a BOINC rá

### Google Cloud Run

* https://cloud.google.com/run/
  * serverless: 2M/hó (50h/hó számítás, kb. 2GB RAM)

### fly.io

* https://www.fly.io/docs/about/pricing/#new-customers-get-a-free-trial
* hitelkártya megadása kötelező
* a legkisebb csomag $5/hó ami leforgalmazható, de csak azután kezdik levonni miután az egyszeri $5 trial credit elfogy fizetős forgalom útján

Korlátlanul felármentesen:

* 8,436,960 shared-cpu-1x másodperc/hó (3 VM 24/7)
* 256MB RAM
* összesen 3GB tartós tárhely: naponta mentve, de redundanciamentes, csak az adott régióban csatolható fel és csak egy VM-re egyszerre
* 160GB/hó kimenő forgalom, bejövő ingyen

### Heroku

A következő pont vonatkozik rá a felhasználási feltételek szerint, bár ha ez nem volna akkor is elég körülményes volna futtatni rajta (előre becsomagolni a binárisokat, 25secenként snapshotolni, adatbázisba írni a checkpointot)

* https://www.heroku.com/policy/aup

> Prohibited Actions
> ...
> 11. Interfere with other users' enjoyment of the Service;

### Replit

* https://replit.com/site/pricing
  * https://replit.com/site/hosting
* 500MB tárhely
* 500MB RAM
* 0.2-0.5 vCPU
  * alszik?

### Glitch

* https://glitch.com/pricing
  * https://glitch.happyfox.com/kb/article/73-glitch-pro-what-s-that/
* 200MB tárhely
* 512MB RAM
* 1000 óra/hó
  * max. 4000 kérés/óra
  * 5 perc kihasználatlanság után elalszik a dinamikus backend
* statikus web hosting ami sosem alszik

## Benchmark

### AWS, Azure, GCP, Oracle

* https://blog.51sec.org/2019/03/free-tier-vps-bench-comparison-for-aws.html
* https://github.com/n-st/nench

### DigitalOcean vs. Linode vs. Vultr vs. OVH vs. Scaleway

* https://www.webstack.de/blog/e/cloud-hosting-provider-comparison-2017/

### LetBox

* https://www.lowendtalk.com/discussion/114358/another-letbox-kvm-vps-free-trial-review

### Toys

* https://toys.lerdorf.com/low-cost-vps-testing

## TODO

* https://toys.lerdorf.com/low-cost-vps-testing
* https://www.openstack.org/marketplace/public-clouds/

### GoDaddy
### vCloud
### Scaleway
### Hetzner Cloud
### Safe Swiss Cloud
### GoGrid

## Nincs

### MCS.Mail.Ru (VK)
### Rackspace
