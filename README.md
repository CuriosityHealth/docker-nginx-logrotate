# NGINX with logrotate support

Starts with default nginx container and adds in logrotate

The default settings are:
 * Rotate logs as soon as they reach 5M in size
 * Keep up to 5 old log files
 * Files are compressed

Settings should be able to be overwritten by mounting an updated config file to /etc/logrotate.d/nginx
