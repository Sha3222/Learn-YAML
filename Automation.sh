# shellcheck disable=SC1036
copy_function() {
  #echo -e "\e[34m >>>>>>>>>>>>>>>>>>changing the directory>>>>>>>>>>>>>>>>>>>>>>>>[0m"
  #cd Learn-YAML
  #echo -e "\e[34m >>>>>>>>>>>>>>>>>>pulling the git>>>>>>>>>>>>>>>>>>>>>>>[0m"
  #git pull >/dev/null
  echo -e "\e[34m >>>>>>>>>>>>>>>>>>copying the file>>>>>>>>>>>>>>>>>>>>>>>[0m"
  cp ${variable} /etc/ansible/playbooks
  cd /etc/ansible/playbooks
  ls
}



