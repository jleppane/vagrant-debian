# jleppane/vagrant-debian

Some shell scripts written for `debian/contrib-buster64` Vagrant box to test and prototype something in a bit more sane way.

## Dependencies

- Vagrant
- VirtualBox

## Usage

Add packages to be installed to `apt_packages_buster` and `apt_packages_buster_backports` in `Vagrantfile`. Edit `Vagrantfile` otherwise if necessary. Then run:

```
vagrant up
```
