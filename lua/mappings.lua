require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Normal mode mappings
map("n", ";", ":", { desc = "enter command mode", nowait = true })
map("n", "<C-d>", "<C-d>zz", { desc = "center after Ctrl+d" })
map("n", "<C-u>", "<C-u>zz", { desc = "center after Ctrl+u" })
map("n", "n", "nzzzv", { desc = "on next word center screen", nowait = true })
map("n", "N", "Nzzzv", { desc = "on previous word center screen", nowait = true })
map("n", "H", "^", { desc = "Move to the start of the line", nowait = true })
map("n", "L", "$", { desc = "Move to the end of the line", nowait = true })

map("n", "<leader>fr", ":%s/<C-r><C-w>//gI<Left><Left><Left>", { desc = "find highlighted word globally", nowait = true })
map("n", "<leader>rl", ":s/<C-r><C-w>//gI<Left><Left><Left>", { desc = "find highlighted word in line", nowait = true })

map("n", "<leader>gs", "<cmd>Git<CR>", { desc = "open fugitive", nowait = true })
map("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "if code is not working", nowait = true })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "toggle nvimtree" })
map("n", "<leader>gx", "<cmd>cclose<CR>", { desc = "Close quicklist", nowait = true })

map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint" })
map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Open debugging sidebar" })

-- Visual mode mappings
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line up", nowait = true })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line down", nowait = true })
