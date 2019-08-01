FROM nginx:1.17
MAINTAINER James Kizer <james@curiosityhealth.com>

# Install logrotate
RUN apt-get update && \
  apt-get install -y cron && \
  apt-get -y install logrotate && \
  apt-get clean && rm -rf /var/lib/apt/lists/*

ADD nginx.logrotate /etc/logrotate.d/nginx

# Start nginx and cron as a service
CMD service cron start && nginx -g 'daemon off;'
