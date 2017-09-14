**Get your local TYPO3 CMS 8.7.x LTS box**

*Requirements:*

1. Virtualbox installed (tested with Version > 5.1.22 )
   https://www.virtualbox.org/
   
2. Vagrant is installed (teseted with Version > 1.9.0 )
   https://www.vagrantup.com/downloads.html
   
3. On Windows it is recomended to download and install NFS Support for Vagrant
   (Tested with windows 7 and Windows 10) 
   If not you need to change NFS option in vagrant configuration
   and have to expect a slow experience 
   with NFS the box will run with TYPO3 10 to 20 times faster !
   
*Installation*
   
Downlaoad this repostory or clone it with git:

`git clone git@github.com:velletti/ansible_vagrant_box.git yourbox`
 
-> will create a folder called "yourbox" 

use any text editor / to repalce the String "XXXBOXXXX" with the wanted BOX Name.
f.e. "yourbox" 

Change TYPO3 version from 8.7.6 to the latest LTS Version 
f.e. 8.7.9

*Result will be:*
a local webserver you can launch yourbox.local
including: 
- nginx server 
- php7.1 with all needed extensons for TYPO3
- mysql server with database "yourbox"
- TYPO3 CMS downlaoded and ready to install
- mailhug for e-Mail testing
 
*Important*
- it may not exist a virtualbox called "yourbox.vb"
- you will need to add one line to your local /etc/host file:

**installation**   
`cd yourbox
vagrant up`

thats all .. !

   
   
   
