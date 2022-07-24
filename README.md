# CentOS to RHEL Demo

A simple demo for centos 8 to rhel 8.


## Convert Process 

Start VM
```
vagrant up 
```

Download GPG key
```
sudo curl -o /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release https://www.redhat.com/security/data/fd431d51.txt
```

Install CA certification
```
sudo curl --create-dirs -o /etc/rhsm/ca/redhat-uep.pem https://ftp.redhat.com/redhat/convert2rhel/redhat-uep.pem
```

Get the covert2rhel repo
```
sudo curl -o /etc/yum.repos.d/convert2rhel.repo https://ftp.redhat.com/redhat/convert2rhel/7/convert2rhel.repo
```

Install convert2rhel
```
sudo yum -y install convert2rhel
```

Start convertion
```
sudo convert2rhel --auto-attach --username=USERNAME
```


## TODO
- Use Ansible to convert various centos


## Reference
1. [An Introduction to Convert2RHEL: Now officially supported to convert RHEL-like systems to RHEL](https://www.redhat.com/en/blog/introduction-convert2rhel-now-officially-supported-convert-rhel-systems-rhel)
2. [How To Convert CentOS 7 Linux To RHEL 8 Server](https://techviewleo.com/how-to-convert-centos-7-linux-to-rhel-8-server/)