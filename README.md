# nvim 2023 Configuration

## Packer Installation
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
## Check dependencies of Telescope
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
