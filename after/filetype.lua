-- In init.lua or filetype.nvim's config file
require("filetype").setup({
    overrides = {
        extensions = {
            tf = "terraform",
            tfvars = "terraform",
            tfstate = "json"
        },
    },
})
