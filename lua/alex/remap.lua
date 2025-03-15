vim.g.mapleader = " "

-- This means Space -> pv will open Netrw (the file explorer).
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Highlighted text gets moved up and down with K and J, respectively.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J appends the line below to current line (with space added),
-- this remapping makes it so the cursor doesn't get moved.
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps cursor in place when paging up/down.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keeps search terms in middle when cycling through them.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "NzzzV")

-- When pasting over text, instead of copying the deleted text, this dumps it
-- into void register so the originally copied text remains available to keep
-- pasting.
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Use leader before yanking to yank into system clipboard.
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Primeagen says never use Q?
vim.keymap.set("n", "Q", "<nop>")

-- Todo, setup tmux. This remap will open up view of sessions (not familiar with
-- tmux yet, so don't know if description is detailed enough).
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")


-- Cycling through quickfix list.
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Cycling through location list.
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Curious about the inner workings of this, but this will setup a find and replace
-- for the current word you are on.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Makes the current file executable.
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})
