# FZFSSH tool

## Introduction
The proposite of this tool named fzfssh , is to take a SSH connection using FZF.
With FZF , you can search a connection SSH so fast.

Only you need is to exec the binary named fzfssh , and you will have to search with fzf the connection that previously you have saved.

Example:

![gif-introduction](https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExaTI5M2FoaWt6emFobGJjbjZ0dDJieGNqc3hoZ29jNjE5OXEwM2R4NSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/XQ4uRIbsIvTEkCrXVq/giphy.gif)

## Installation

```bash
sudo git clone https://github.com/zipyinthenet/fzfssh.git /opt/fzfssh/
```

Execute with root permission , you can do that with 'sudo'

```bash
sudo bash /opt/fzfssh/installer/install-fzfssh.sh
```

fzfssh binary , links a symbolic file to '/usr/local/bin/' , so you can execute the binary fzfssh wherever directory of the system

## Add list hosts connections

The directory '/opt/fzfssh/list_hosts/' contains the file 'fzfssh_hosts'
Only you need to write some new connections

Example:

![gif-add-list](https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExMmk1cjg2ZGFndTJ1czQ3ZTI3bjB1M3F0MHNyY3A3YjJjZThhNmQ4NiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/NpZmTWdJh0ocvyGO6L/giphy.gif)

## Usage

options:

	fzfssh [-h] [-t] [-u <user>]
	-h            	-> muestra este mensaje
	-p <port> 		-> redireccion del puerto <port>=8080, 222...
	-u <user>     	-> usuario con el que conectarse en caso de no querer utilizar el mismo que el de la sesion de bash
