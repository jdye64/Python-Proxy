#!/bin/sh

echo 'Installing Python Internal Network Proxy'
mkdir /usr/local/bin/python-proxy
chmod 755 /usr/local/bin/python-proxy
cp ./Internal-Proxy.py /usr/local/bin/python-proxy/.
chmod 755 /usr/local/bin/python-proxy/Internal-Proxy.py

# Move the init script to /etc/init.d
cp ./pythonproxy.sh /etc/init.d/.
chmod 755 /etc/init.d/pythonproxy.sh

echo 'Updating etc inti defaults for pythonproxy'
update-rc.d pythonproxy.sh defaults

echo 'Python Internal Network Proxy has been installed'


