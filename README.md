# NGINX with logrotate support

Starts with default nginx container and adds in logrotate

The default settings are:
 * Logs are rotated weekly
 * Keep up to 13 old log files, for a total of 91 days
 * Files are compressed

Settings should be able to be overwritten by mounting an updated config file to /etc/logrotate.d/nginx
