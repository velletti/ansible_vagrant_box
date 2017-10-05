

**requirements:**
- need vagrant and virtual box
- needs this a checkout of this repository, branch oxidshopV4
- needs your id_rsa and id_rsa.pub files in root of this repository
- needs a shop.sql in subfolder /shop (if you want to import an sql dump automatically. remove / rename that file afterwards )

start the insallation with 
vagrant up ( or later after cahnges with vagrant provision )

- will install a local OLD SHOP V4.7.14 envrionment 
- will get all old repos like allplan-base-module 
- will checkout / update branch "develop" 
(details see oxid role -> defaults -> main.yaml with configured repos and branch settings )

- Creates a syncfiles.sh script from oxid role -> templates
(can be satarted manually in the vagrant box with: 
sudo sh /vagrant/shop/repos/syncfiles.sh

**Good to know:**

*login to the linux maschine*
- vagrant ssh 

*mysql:*

- host: localhost
- database name: shop
- user: root 
- password: 123

**or**
- user: user_shop
- password: password

*add Hostname to /etc/hosts  ( windows/system32/dirvers/etc/hosts )*
- 192.168.33.99 oxidshop.local

**URLS:** 
- https://oxidshop.local 
- https://oxidshop.local/admin

 
