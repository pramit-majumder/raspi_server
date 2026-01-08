sudo apt-get update
sudo apt-get upgrade

wget https://github.com/binwiederhier/ntfy/releases/download/v2.15.0/ntfy_2.15.0_linux_amd64.tar.gz
tar zxvf ntfy_2.15.0_linux_amd64.tar.gz
sudo cp -a ntfy_2.15.0_linux_amd64/ntfy /usr/local/bin/ntfy
sudo mkdir /etc/ntfy && sudo cp ntfy_2.15.0_linux_amd64/{client,server}/*.yml /etc/ntfy
sudo ntfy serve

curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com bookworm main" \
  | sudo tee /etc/apt/sources.list.d/ngrok.list \
  && sudo apt update \
  && sudo apt install ngrok

wget http://lilnetwork.com/download/raspberrypi/mjpg-streamer.tar.gz
tar xvzf mjpg-streamer.tar.gz
sudo apt-get install libjpeg8-dev
sudo apt-get install imagemagick
cd mjpg-streamer/mjpg-streamer
make

# Set default values for all following accounts.
defaults

# Use the mail submission port 587 instead of the SMTP port 25.
port 587

# Always use TLS.
tls on

# Set a list of trusted CAs for TLS. The default is to use system settings, but
# you can select your own file.
tls_trust_file /etc/ssl/certs/ca-certificates.crt
