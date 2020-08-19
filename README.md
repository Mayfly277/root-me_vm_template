# Root-me pwn vm template

## Install

- Install vagrant last version
```
curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo apt install ./vagrant_2.2.9_x86_64.deb
```

- install ansible
```
sudo apt install ansible
```

- Install vagrant plugin
```
sudo apt install libvirt-dev
vagrant plugin install vagrant-vbguest vagrant-libvirt
```

## commands
- Launch (do provisioning on first run)
  - `vagrant up`

- Stop VM
  - `vagrant halt`

- Relaunch vm provisionning
  - `vagrant reload --provision`

- Destroy VM
  - `vagrant destroy`
