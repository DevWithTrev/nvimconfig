local nnoremap = require("trevor.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Better up and Down
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- Resize with arrows
nnoremap("<C-Up>", ":resize -2<CR>")
nnoremap("<C-Down>", ":resize +2<CR>")
nnoremap("<C-Left>", ":vertical resize +2<CR>")
nnoremap("<C-Right>", ":vertical resize -2<CR>")

-- Navigiate buffers
nnoremap("<S-l>", ":bnext<CR>")
nnoremap("<S-h>", ":bprevious<CR>")


local inoremap = require("trevor.keymap").inoremap

inoremap("jk", "<ESC>")

-- Stay in indent mode
local vnoremap = require("trevor.keymap").vnoremap

vnoremap("<", "<gv")
vnoremap(">", ">gv")

local tnoremap = require("trevor.keymap").tnoremap

tnoremap("<C-h>", "<C-//><C-N><C-w>h")
tnoremap("<C-j>", "<C-//><C-N><C-w>j")
tnoremap("<C-k>", "<C-//><C-N><C-w>k")
tnoremap("<C-l>", "<C-//><C-N><C-w>l")

nnoremap("<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown())<cr>")
nnoremap("<leader>gf", "<cmd>Telescope live_grep<cr>")

-- Nvimtree
nnoremap("<leader>e", ":NvimTreeToggle<cr>")
