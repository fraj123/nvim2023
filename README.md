# nvim 2023 Configuration

## Nvim Installation
```bash
curl -L  -O https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -xzf nvim-linux64.tar.gz
sudo mv nvim-linux64 /opt/
sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
```
## Packer Installation
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
> :warning: **Before to run PackerSync comment theme in init.lua**
## Check dependencies of Telescope
### Debian Distribution
```bash
sudo apt install -Y ripgrep
sudo apt install -Y fd-find
```

### Fedora Distribution
```bash
sudo dnf install ripgrep -Y
sudo dnf install fd-find -Y
```
### Arch Distributions
```bash
sudo pacman -S ripgrep
sudo pacman -S fd
```

## Run packer and treesitter in nvim
```
PackerSync
TSUpdate
```

## Laravel Language Support
### Install intelephense server
```bash
npm install -g intelephense
```
### Install terraform-ls server
```bash
wget https://releases.hashicorp.com/terraform-ls/0.32.3/terraform-ls_0.32.3_linux_amd64.zip
unzip terraform-ls_0.32.3_linux_amd64.zip
sudo mv terraform-ls /usr/local/bin
```
### Install lua-language-server
```bash
curl -L -O https://github.com/LuaLS/lua-language-server/releases/download/3.7.3/lua-language-server-3.7.3-linux-x64.tar.gz
mkdir lua-language-server
tar -xzf lua-language-server-3.7.3-linux-x64.tar.gz -C lua-language-server/
sudo mv lua-language-server /opt/
sudo ln -s /opt/lua-language-server/bin/lua-language-server /usr/local/bin/lua-language-server
```

