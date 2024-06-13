# archlinux-fixed-release
Enable fixed release for ArchLinux

You are sick of of the following experience? 
<pre>
<b>></b> pacman -S <b>tinysoftware</b>
     ...
Total Download Size:   <b>0.01 MiB</b>
Total Installed Size:  <b>0.10 MiB</b>

:: Proceed with installation? [Y/n] Y
:: Retrieving packages...
error: failed retrieving file 'tinysoftware-1.0-x86_64.pkg.tar.zst' from archlinux.mailtunnel.eu : The requested URL returned error: 404
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

Just call the script [pacman-upgrade.sh](https://github.com/flappix/archlinux-fixed-release/blob/main/pacman-upgrade.sh) as root. This will install fixed release and upgrade your system.

## Usage

From now on simply use ```pacman -S``` to install new software packages like you normally do.  
If you activley want to upgrade your system use ```pacman-upgrade.sh``` instead of ```pacman -Syu```.
To switch back to rolling release, simply restore your /etc/pacman.d/mirrorlist
```
> cp /etc/pacman.d/mirrorlist.backup-<timestamp> /etc/pacman.d/mirrorlist
```
