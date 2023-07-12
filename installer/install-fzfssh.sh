#!/usr/bin/env bash

if [ `whoami` != "root" ]; then
  echo "Only root can run this"
  exit 1
fi

optpath="/opt/fzfssh/resources"
optpathlist_hosts="/opt/fzfssh/list_hosts/fzfssh_hosts"
binpath="/usr/local/bin/"

# Change owner on /opt/fzfssh/resources/ files
chown root.root "$optpath/fzf"
chown root.root "$optpath/fzfssh"

# Change bits on /opt/fzfssh/resources/ files
chmod 755 "$optpath/fzf"
chmod 755 "$optpath/fzfssh"

# make symbolic files to /usr/local/bin
ln -s "$optpath/fzf" "$binpath"
ln -s "$optpath/fzfssh" "$binpath"

# create group fzfssh
groupadd fzfssh

# add users to group fzfssh
for i in $(cat /etc/passwd | grep "/bin/bash" | cut -d ':' -f1)
do
	usermod -aG fzfssh $i
done

# Change owner and bits on /opt/fzfssh/list_hosts/fzfssh_hosts file
chown root.fzfssh "$optpathlist_hosts"
chmod 775 "$optpathlist_hosts"
