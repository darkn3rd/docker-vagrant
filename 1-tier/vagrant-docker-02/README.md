# **Vagrant with Docker Provisioner**

This is a small demonstration of a Vagrant's Docker provisioner.  

The Docker provisioner in Vagrant 1.8.1 takes 9+ minutes to install Docker.  This is an optimized alternative that saves 7+ minutes off of the docker install.

## **Instructions**

```bash
vagrant up --no-provision # bring up base OS w/o Docker
vagrant provision         # provision with Docker
```

### **Test the Web Service**

```bash
./test.sh
```
