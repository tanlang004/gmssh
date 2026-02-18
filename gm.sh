# Add cloudflare gpg key
sudo mkdir -p --mode=0755 /usr/share/keyrings
curl -fsSL https://pkg.cloudflare.com/cloudflare-public-v2.gpg | sudo tee /usr/share/keyrings/cloudflare-public-v2.gpg >/dev/null

# Add this repo to your apt repositories
echo 'deb [signed-by=/usr/share/keyrings/cloudflare-public-v2.gpg] https://pkg.cloudflare.com/cloudflared any main' | sudo tee /etc/apt/sources.list.d/cloudflared.list

# install cloud flared
sudo apt-get update && sudo apt-get install cloudflared

sudo cloudflared service install eyJhIjoiNWVkOTI5OGJjNTgyZWZiOWVjNDRiZjAzYWQ2ZDEzNTkiLCJ0IjoiM2MwZjhiN2EtMjUzNC00M2I5LThkZGUtMzY2ZWJhMDk4MmRiIiwicyI6IllqUXpORFV3TWpjdE0yWTRNQzAwWlRKbExUZzBOVGd0T1RVM05EWTROVE15TW1aaiJ9
apt install nodejs npm -y
wget https://raw.githubusercontent.com/vevc/nodejs-vless/refs/heads/main/app.js
wget https://raw.githubusercontent.com/vevc/nodejs-vless/refs/heads/main/package.json
npm install
PORT=3000 UUID=73bd2a6a-84ce-4dcd-b593-b26cd0506133 DOMAIN=3000.xiaodu1234.xyz  WEB_SHELL=on node app.js
