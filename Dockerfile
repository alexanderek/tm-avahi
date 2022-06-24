FROM alpine:3.16.0
LABEL maintainer="Alexander Kiselev <a@kslv.me>"

RUN apk add --no-cache \
  avahi \
  tzdata \
  && sed -i 's/#enable-dbus=yes/enable-dbus=no/g' /etc/avahi/avahi-daemon.conf \
  && rm -rf /var/cache/apk/*

COPY smb.service /etc/avahi/services
COPY init.sh /

ENTRYPOINT ["/init.sh"]
