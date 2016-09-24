

### Curl Script Way
```bash
$ [ -x /usr/bin/lsb_release ] && /usr/bin/lsb_release -i 2>/dev/null | grep Ubuntu
Distributor ID:	Ubuntu
sudo test -f /usr/bin/docker
sudo test -f /usr/local/bin/docker
sudo test -f /usr/sbin/docker
sudo apt-get update -qq -y                             # 1m39
sudo apt-get install -qq -y --force-yes curl apt-transport-https
sudo apt-get purge -qq -y lxc-docker* || true
curl -sSL https://get.docker.com/ | sudo sh            # 8m21.600s
test -f /usr/bin/docker
getent group docker
id -Gn | grep docker
sudo usermod -a -G docker vagrant
test -f /var/run/docker.pid
test -f /var/run/docker.pid
```

### Apt-Get Way
# real	2m12.201s

```bash
# https://docs.docker.com/engine/installation/linux/ubuntulinux/
apt-get update                                        # 0m29.270s
apt-get install apt-transport-https ca-certificates   # 0m0.392s
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D # 0m0.652s
echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > /etc/apt/sources.list.d/docker.list
apt-get update                                        # 0m6.792s
apt-get purge lxc-docker                              # 0m0.351s
apt-get install linux-image-extra-$(uname -r)         # 0m54.865s
apt-get install apparmor                              # 0m0.339s
apt-get update                                        # 0m12.315s
apt-get install -y docker-engine                      # 0m12.310s
usermod -a -G docker vagrant
service docker start                                  # 0m0.011s
```


apt-get purge -qq -y lxc-docker* || true

curl -sSL https://get.docker.com/ | sh
apt-get update
apt-get install -y -q linux-image-extra-3.13.0-83-generic linux-image-extra-virtual

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

gpg --ignore-time-conflict --no-options --no-default-keyring --homedir /tmp/tmp.mSokbs9H1M --no-auto-check-trustdb --trust-model always --keyring /etc/apt/trusted.gpg --primary-keyring /etc/apt/trusted.gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

sh -c mkdir -p /etc/apt/sources.list.d
dpkg --print-architecture
echo deb [arch=amd64] https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list
apt-get install -y -q docker-engine
