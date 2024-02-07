---
title: Installation
---

 # Installation Method

 You need to have a clean install of archlinux



## Installation of packages

Every time you will install a package you will have some reccurent errors,

To clean that you can install all this packages.

Here is some possible errors
Possibly missing firmware for module: 'qla1280'
==> WARNING: Possibly missing firmware for module: 'bfa'
==> WARNING: Possibly missing firmware for module: 'wd719x'
==> WARNING: Possibly missing firmware for module: 'qla2xxx'
==> WARNING: Possibly missing firmware for module: 'aic94xx'

```bash
paru -S upd72020x-fw ast-firmware aic94xx-firmware wd719x-firmware
sudo pacman -S linux-firmware-qlogic linux-firmware-nfp linux-firmware-mellanox linux-firmware-liquidio linux-firmware-bnx2x
```
