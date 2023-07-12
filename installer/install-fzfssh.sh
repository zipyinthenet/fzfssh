#!/usr/bin/env bash

# Onlyroot can run this script
onlyroot () {
  if [ `whoami` != "root" ]; then
  echo "Only root can run this"
  exit 1
  fi
}

# charge variables
chargevariable () {
  source "/opt/fzfssh/installer/environment"
}

# change owner on /opt/fzfssh/resources/ files
# change bits on /opt/fzfssh/resources/ files
ownerandbits () {
  chown root.root "$optpath/fzf"
  chown root.root "$optpath/fzfssh"
  chmod 755 "$optpath/fzf"
  chmod 755 "$optpath/fzfssh"
}

# make symbolic files to /usr/local/bin
makesymbolicfiles () {
  ln -s "$optpath/fzf" "$binpath"
  ln -s "$optpath/fzfssh" "$binpath"
}

# create group fzfssh
# add users to group fzfssh
creategroupandaddusers () {
  groupadd fzfssh
  for i in $(cat /etc/passwd | grep "/bin/bash" | cut -d ':' -f1)
  do
    usermod -aG fzfssh $i
  done
}

# change owner and bits on /opt/fzfssh/list_hosts/fzfssh_hosts file
ownerandbitslisthosts () {
  chown root.fzfssh "$optpathlist_hosts"
  chmod 775 "$optpathlist_hosts"
}

init () {
  onlyroot
  chargevariable
  ownerandbits
  makesymbolicfiles
  creategroupandaddusers
  ownerandbitslisthosts
}

init