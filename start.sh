#!/bin/sh

if [[  ! -z $MYSQL_ENV_MYSQL_ROOT_PASSWORD  ]]; then
	echo -e "\033[0;30m
\033[0;34m  Adminer\033[0;37m - Database Management\033[0;30m
-----------------------------------------------------\n
\033[0m  MySQL Host:\033[0;37m $MYSQL_PORT_3306_TCP_ADDR
\033[0m  MySQL Pass:\033[0;37m $MYSQL_ENV_MYSQL_ROOT_PASSWORD\n"
fi

exec php -S 0.0.0.0:80 -t /app
