cp ../sysconf/common-auth /etc/pam.d/common-auth
sudo chmod 640 /etc/pam.d/common-auth
cp ../sysconf/common-password /etc/pam.d/common-password
sudo chmod 640 /etc/pam.d/common-password
cp ../sysconf/login.defs /etc/pam.d/login.defs
sudo chmod 640 /etc/login.defs
cp ../sysconf/sudoers /etc/sudoers
sudo chmod 440 /etc/sudoers