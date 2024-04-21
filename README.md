# How to use?

## For Ubuntu 20

### Install Pritunl
```bash
bash <(curl -sSL https://github.com/ongtungduong/pritunl-installer/raw/focal-1.30/install.sh)
```

### Active
```bash
bash <(curl -sSL https://github.com/ongtungduong/pritunl-installer/raw/focal-1.30/active.sh)
```

## For Ubuntu 22

### Install Pritunl
```bash
bash <(curl -sSL https://github.com/ongtungduong/pritunl-installer/raw/jammy-1.30/install.sh)
```

### Active
```bash
bash <(curl -sSL https://github.com/ongtungduong/pritunl-installer/raw/jammy-1.30/active.sh)
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
echo "* hard nofile 64000" | sudo tee -a /etc/security/limits.conf
echo "* soft nofile 64000" | sudo tee -a /etc/security/limits.conf
echo "root hard nofile 64000" | sudo tee -a /etc/security/limits.conf
echo "root soft nofile 64000" | sudo tee -a /etc/security/limits.conf
```

### Config for Load Balancing
```bash
sudo pritunl set app.reverse_proxy true
sudo pritunl set app.redirect_server false
sudo pritunl set app.server_ssl false
sudo pritunl set app.server_port 80
```

