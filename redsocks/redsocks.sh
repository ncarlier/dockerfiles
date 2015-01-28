#!/bin/sh

if test $# -eq 2
then
    proxy_ip=$1
    proxy_port=$2
else
    echo "No proxy URL defined. Using default."
    proxy_ip=10.26.141.135
    proxy_port=3128
fi

echo "Creating redsocks configuration file using proxy ${proxy_ip}:${proxy_port}..."
sed -e "s|\${proxy_ip}|${proxy_ip}|" \
    -e "s|\${proxy_port}|${proxy_port}|" \
    /etc/redsocks.tmpl > /tmp/redsocks.conf

echo "Generated configuration:"
cat /tmp/redsocks.conf

trap trapper HUP INT QUIT KILL TERM

trapper() {
  echo "Signal catched. Disable iptables rules..."
  exec /usr/local/bin/redsocks-fw.sh stop
}

echo "Activating iptables rules..."
/usr/local/bin/redsocks-fw.sh start

echo "Starting redsocks..."
exec /usr/sbin/redsocks -c /tmp/redsocks.conf

