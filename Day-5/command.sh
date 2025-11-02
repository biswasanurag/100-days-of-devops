## 1. Install SELinux Packages
# For RHEL/CentOS/Rocky Linux/AlmaLinux 7 and older:
sudo yum install selinux-policy selinux-policy-targeted policycoreutils

## 2. Permanently Disable SELinux
sudo vi /etc/selinux/config
# Change the SELINUX directive: Find the line that starts with SELINUX= and change its value to disabled

## 3. Check the status of the SELinux
sudo sestatus
