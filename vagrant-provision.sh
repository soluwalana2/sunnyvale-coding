curl -s -O https://storage.googleapis.com/golang/go1.7.1.linux-amd64.tar.gz
tar xzf go1.7.1.linux-amd64.tar.gz
sudo chown -R root:root ./go
sudo mv go /usr/local

echo "export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" | sudo tee -a /etc/profile


export DEBIAN_FRONTEND=noninteractive

echo "mariadb-server-10.0 mysql-server/root_password password root" | sudo debconf-set-selections
echo "mariadb-server-10.0 mysql-server/root_password_again password root" | sudo debconf-set-selections

sudo apt-get update
sudo apt-get install -y mariadb-server get mercurial python nodejs