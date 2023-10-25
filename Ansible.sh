ansible_installation () {
  sudo dnf update
  echo "\e[34m >>>>>>>>>>>>>>>>>>>>Installing Python3>>>>>>>>>>>>>>>>>>>>\e[0m"
  sudo dnf install python3 &>>/tmp/file.log
  echo "\e[34m >>>>>>>>>>>>>>>>>>>>>>>>Python Version>>>>>>>>>>>>>>>>>>>>>\e[0m"
  python3 -V &>> /tmp/file.log
  echo "\e[34m >>>>>>>>>>>>>>>>>>>>>>>>Python Packet Manager>>>>>>>>>>>>>>>>>>>>>\e[0m"
  sudo dnf install python3-pip &>>/tmp/file.log
  echo "\e[34m >>>>>>>>>>>>>>>>>>>>>>>>Installation Ansible >>>>>>>>>>>>>>>>>>>>>\e[0m"
  pip3 install ansible --user &>>/tmp/file.log
  subscription-manager repos --enable ansible-2.8-for-rhel-8-x86_64-rpms &>>/tmp/file.log
  dnf -y install ansible &>>/tmp/file.log
  ansible --version
  echo "\e[34m >>>>>>>>>>>>>>>>>>>>>>>>Ansible Status >>>>>>>>>>>>>>>>>>>>>\e[0m"
  sudo systemctl status sshd

  echo echo "\e[34m >>>>>>>>>>>>>>>>>>>>>>>>creating hosts file, creating /etc/ansible>>>>>>>>>>>>>>>>>>>>>\e[0m"
  sudo mkdir /etc/ansible
  cd /etc/ansible
  sudo touch hosts
}

ansible_installation