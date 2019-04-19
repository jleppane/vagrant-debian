# jleppane/vagrant-debian

Some shell scripts written for `debian/contrib-stretch64` Vagrant box to test and prototype something in a bit more sane way.

## Dependencies

- Vagrant
- VirtualBox

## Usage

Add packages to be installed to `apt_packages_stable` and `apt_packages_stable_backports` in `Vagrantfile`. Edit `Vagrantfile` otherwise if necessary. Then run:

```
vagrant up
```
