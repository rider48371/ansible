vim.g.mapleader = " "

local keymap = vim.keymap

--general keymaps

keymap.set("i", "jk", "<ESC>") --map escape key to jk keys in insert 

keymap.set("n", "<leader>nh", ":nohl<CR>") --clear search highlights

keymap.set("n", "x", '"_x"') --delete single character in normal mode without adding to clipboard

keymap.set("n", "<leader>+", "<C-a>") --increment number up
keymap.set("n", "<leader>-", "<C-x>") --increment number down

keymap.set("n", "<leader>sv", "<C-w>v") --split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") --split window horizontally
keymap.set("n", "<leader>se", "<C-w=") --make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") --close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") --open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") --close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --go to previous tab

--plugin keymaps

--vim-maximizer
keymap.set("n", "<leader>sm", "MaximizerToggle<CR>") --maximize a split window and restore to original size

--nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") --open nvim-tree

--telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") --find files in our project
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") --find text throughout our project
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") --find current string cursor is on throughout project
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") --show active buffers
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tage<cr>") --show help tags
