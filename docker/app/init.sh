#!/bin/bash

# bash-4.2# /usr/sbin/php-fpm -h
# Usage: php-fpm [-n] [-e] [-h] [-i] [-m] [-v] [-t] [-p <prefix>] [-g <pid>] [-c <file>] [-d foo[=bar]] [-y <file>] [-D] [-F [-O]]
#   -c <path>|<file> Look for php.ini file in this directory
#   -n               No php.ini file will be used
#   -d foo[=bar]     Define INI entry foo with value 'bar'
#   -e               Generate extended information for debugger/profiler
#   -h               This help
#   -i               PHP information
#   -m               Show compiled in modules
#   -v               Version number
#   -p, --prefix <dir>
#                    Specify alternative prefix path to FastCGI process manager (default: /usr).
#   -g, --pid <file>
#                    Specify the PID file location.
#   -y, --fpm-config <file>
#                    Specify alternative path to FastCGI process manager config file.
#   -t, --test       Test FPM configuration and exit
#   -D, --daemonize  force to run in background, and ignore daemonize option from config file
#   -F, --nodaemonize
#                    force to stay in foreground, and ignore daemonize option from config file
#   -O, --force-stderr
#                    force output to stderr in nodaemonize even if stderr is not a TTY
#   -R, --allow-to-run-as-root
#                    Allow pool to run as root (disabled by default)
/usr/sbin/php-fpm -F &

# bash-4.2# /usr/sbin/nginx -h
# nginx version: nginx/1.19.2
# Usage: nginx [-?hvVtTq] [-s signal] [-c filename] [-p prefix] [-g directives]
# 
# Options:
#   -?,-h         : this help
#   -v            : show version and exit
#   -V            : show version and configure options then exit
#   -t            : test configuration and exit
#   -T            : test configuration, dump it and exit
#   -q            : suppress non-error messages during configuration testing
#   -s signal     : send signal to a master process: stop, quit, reopen, reload
#   -p prefix     : set prefix path (default: /etc/nginx/)
#   -c filename   : set configuration file (default: /etc/nginx/nginx.conf)
#   -g directives : set global directives out of configuration file
/usr/sbin/nginx -g "daemon off;"
