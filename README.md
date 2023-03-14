# archlinux-fixed-release
Enable fixed release for ArchLinux

You are sick of of the following experince? 
<pre>
<b>></b> pacman -S <b>tinysoftware</b>
     ...
Total Download Size:   <b>0.01 MiB</b>
Total Installed Size:  <b>0.10 MiB</b>

:: Proceed with installation? [Y/n] Y
:: Retrieving packages...
error: failed retrieving file 'tinysoftware.1-1-x86_64.pkg.tar.zst' from archlinux.mailtunnel.eu : The requested URL returned error: 404
Errors occurred, no packages were upgraded.
<b>></b>
<b>></b> pacman -Syu
   ....

Total Download Size:  <b>99999999999 GiB</b>
Total Installed Size: <b>99999999999999 GiB</b>
Net Upgrade Size:     <b>99999999999 GiB</b>
</pre>

Here is how to turn your beloved ArchLinux into a fixed release system.

## Installation 

1. Place [https://github.com/flappix/archlinux-fixed-release/blob/main/pacman-upgrade.sh](pacman-upgrade.sh) in ```/usr/bin```
2. Backup your ```/etc/pacman.d/mirrorlist``` in case you want to switch back to rolling release later
3. Call ```pacman-upgrade.sh``` as root. This will upgrade your system.

From now on simply use ```pacman -S``` to install new software packages like you normally do. If you activley want to upgrade your system use ```pacman-upgrade.sh``` instead of ```pacman -Syu```
