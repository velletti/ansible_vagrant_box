**Get your local SHOP 6.x  box**

*Requirements:*

1. Virtualbox installed (tested with Version > 5.1.22 )
   https://www.virtualbox.org/
   
2. Vagrant is installed (tested with Version > 1.9.0 )
   https://www.vagrantup.com/downloads.html
   
3. On Windows it is recomended to download and install NFS Support for Vagrant
   (Tested with windows 7 and Windows 10) 
   If not you need to change NFS option in vagrant configuration
   and have to expect a slow experience 
   with NFS the box will run with TYPO3 10 to 20 times faster !
   
   download  winnfs daeamon from github ,  
   https://github.com/winnfsd/vagrant-winnfsd
   
   - put the exe file to a folder that is already set in the path env (or add a new one).
     
   install it with:
   
   vagrant plugin install vagrant-winnfsd
   
*Installation*
   
Download this repostory or clone it with git:

`git clone git@github.com:velletti/ansible_vagrant_box.git shopV6`
 
-> will create a folder called "shopV6" 

*Switch the branch:*

This will install an empty Shop With OXID V6
git checkout shop  

*Result will be:*
a local webserver you can launch "oxidshop.local"
including: 
- apache 2 server 
- php7.0 with all needed extensions for OxidShop
- mysql server with database "shop" ( user: user_shop password: password )
- Latest OXID V6 Version ( actually Beta) installed via Composer
- mailhug for e-Mail testing
 
*Important*
- it may not exist a virtualbox called "shop.v6"
- you will need to add one line to your local /etc/host file:

oxidshop.local 

**installation**   
`cd shopV6
vagrant up`

thats all .. !

   
   
   
