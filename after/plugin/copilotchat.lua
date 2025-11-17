local copilotchat = require("CopilotChat")

copilotchat.setup({
-- Your custom configuration goes here
})

local map = vim.keymap.set
local opts = { noremap=true, silent=true }

map("n", "<leader>cc", "<cmd>CopilotChat<cr>", opts)
map("n", "<leader>cC", "<cmd>CopilotChatClose<cr>", opts)
map("v", "<leader>ce", "<cmd>CopilotChatExplain<cr>", opts)
map("v", "<leader>cr", "<cmd>CopilotChatReview<cr>", opts)
map("n", "<leader>cm", "<cmd>CopilotChatCommit<cr>", opts)
