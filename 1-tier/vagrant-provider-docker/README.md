# **Vagrant with Shell Provisioner**

This is a small demonstration of a Vagrant's Shell provisioner.

## **Windows Notes**

On Windows, you'll need rync to use this.  In my experience, the best way to get rsync is from [MSYS2](https://msys2.github.io/) and using `pacman -s rsync`

## **Instructions**

```bash
vagrant up --no-provision # bring up base OS w/o Docker
vagrant provision         # provision with Docker
vagrant-run &             # run the web service
```

### **Test the Web Service**

```bash
./test.sh                 # test the web service
```
