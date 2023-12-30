# nvim 2023 Configuration

## Nvim Installation
```bash
curl -L  -O https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -xzf nvim-linux64.tar.gz
sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
```
## Packer Installation
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
> :warning: **Before to run PackerSync comment theme in init.lua**
## Check dependencies of Telescope
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

## Laravel Language Support
### Install intelephense server
```
npm install -g intelephense
```
### Add the require to `lsp.lua` file
```
lspconfig.intelephense.setup{}
```

## Terraform Language Support
### Install intelephense server
```
wget https://releases.hashicorp.com/terraform-ls/0.32.3/terraform-ls_0.32.3_linux_amd64.zip
unzip terraform-ls_0.32.3_linux_amd64.zip
sudo mv terraform-ls /usr/local/bin
```
### Add the require to `lsp.lua` file
```
lspconfig.intelephense.setup{}
```
