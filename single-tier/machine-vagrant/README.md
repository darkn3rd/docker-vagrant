# **Docker Machine Using Vagrant**

This is a small demonstration of using Docker Machine generic driver with Vagrant.

**USE CASE:** If you want the convenience of using docker client tools on the host, and take advantage of running the docker engine on a virtual guest through Vagrant system.  The disadvantage with this setup, is that you do not have local file system access through the generic driver.

## **Instructions**

### **Starting Up Environment**

```bash
./docker-up.sh         # bring docker machine environment
```
### **Running Script**

```bash
./test.sh
```
