# **Vagrant with Shell Provisioner**

This is a small demonstration of a Vagrant's Shell provisioner.

**USE CASE:** Develop shell scripts that can be used to provision or configure a system, whether in Docker or other system.

## **1. Requirements**

### **1.1. Windows Notes**

On Windows, you'll need rync to use this.  In my experience, the best way to get rsync is from [MSYS2](https://msys2.github.io/) and using `pacman -s rsync`

## **2. Instructions**

```bash
# bring up base OS w/o Docker
vagrant up --no-provision
vagrant provision  # provision with Docker
./app_run &  # remotely launch web service from host
```

## **3. Test the Web Service**

```bash
./app_test  # test the web service running on virtual guest
```
