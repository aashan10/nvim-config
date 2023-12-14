require("terminal").setup({

    layout = { open_cmd = "botright new"},
    cmd = "zsh",
    close_on_exit = true,
});

local term_map = require("terminal.mappings")

vim.keymap.set("n", "<leader>tt", term_map.toggle)
vim.keymap.set("n", "<leader>tn", term_map.cycle_next)
vim.keymap.set("n", "<leader>tp", term_map.cycle_prev)
vim.keymap.set("n", "<leader>tk", term_map.kill)
vim.keymap.set("n", "<leader>to", term_map.run)

