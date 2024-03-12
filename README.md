# Get Pritunl setup-key
```bash
sudo pritunl setup-key
```

# Get Pritunl default-password
```bash
sudo pritunl default-password
```

# Increase Open File Limit
```bash
sudo sh -c 'echo "* hard nofile 64000" >> /etc/security/limits.conf'
sudo sh -c 'echo "* soft nofile 64000" >> /etc/security/limits.conf'
sudo sh -c 'echo "root hard nofile 64000" >> /etc/security/limits.conf'
sudo sh -c 'echo "root soft nofile 64000" >> /etc/security/limits.conf'
```

# Load Balancing
```bash
sudo pritunl set app.reverse_proxy true
sudo pritunl set app.redirect_server false
sudo pritunl set app.server_ssl false
sudo pritunl set app.server_port 80
```

# How to use?
*Run install.sh script and then run patch.sh script*