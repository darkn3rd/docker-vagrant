# **Vagrant with Docker Provisioner**

This is a small demonstration of a Vagrant's Docker provisioner.  This runs Docker on Vagrant.

**USE CASE:** Test build, deploy, and other orchestration scripts for Docker on a pure Linux system system.

**NOTE:** The Docker provisioner in Vagrant 1.8.1 takes 9-20+ minutes to install Docker.  This is an optimized alternative that saves 7+ minutes off of the docker install.

## **Instructions**

```bash
vagrant up --no-provision # bring up base OS w/o Docker
vagrant provision         # provision with Docker
```

### **Test the Web Service**

```bash
./test.sh
```
