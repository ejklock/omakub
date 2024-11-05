# Add makedeb repository and install eza
sudo mkdir -p /etc/apt/keyrings
wget -qO - 'https://proget.makedeb.org/debian-feeds/makedeb.pub' | gpg --dearmor | sudo tee /etc/apt/keyrings/makedeb-archive-keyring.gpg 1> /dev/null
echo 'deb [signed-by=/etc/apt/keyrings/makedeb-archive-keyring.gpg arch=all] https://proget.makedeb.org/ makedeb main' | sudo tee /etc/apt/sources.list.d/makedeb.list
sudo apt update
sudo apt install -y fzf ripgrep bat eza zoxide plocate btop apache2-utils fd-find tldr
