# How to use?

## For Ubuntu 20

### Install Pritunl
```bash
curl https://raw.githubusercontent.com/ongtungduong/pritunl-installer/focal-1.30/install.sh | sudo bash
```

### Install Patch
```bash
curl https://raw.githubusercontent.com/ongtungduong/pritunl-installer/focal-1.30/patch.sh | sudo bash
```

## For Ubuntu 22

### Install Pritunl
```bash
curl https://raw.githubusercontent.com/ongtungduong/pritunl-installer/jammy-1.30/install.sh | sudo bash
```

### Install Patch
```bash
curl https://raw.githubusercontent.com/ongtungduong/pritunl-installer/jammy-1.30/patch.sh | sudo bash
```

# Pritunl Setup

### Get Pritunl setup-key
```bash
sudo pritunl setup-key
```

### Get Pritunl default-password
```bash
sudo pritunl default-password
```

### Reset administrator password
```bash
sudo pritunl reset-password
```

### Increase Open File Limit
```bash
sudo sh -c 'echo "* hard nofile 64000" >> /etc/security/limits.conf'
sudo sh -c 'echo "* soft nofile 64000" >> /etc/security/limits.conf'
sudo sh -c 'echo "root hard nofile 64000" >> /etc/security/limits.conf'
sudo sh -c 'echo "root soft nofile 64000" >> /etc/security/limits.conf'
```

### Config for Load Balancing
```bash
sudo pritunl set app.reverse_proxy true
sudo pritunl set app.redirect_server false
sudo pritunl set app.server_ssl false
sudo pritunl set app.server_port 80
```

