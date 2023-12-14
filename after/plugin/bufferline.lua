vim.opt.termguicolors = true


require("bufferline").setup({
    options = {
        numbers = "ordinal",
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is deduplicated
        tab_size = 18,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin",
        always_show_bufferline = true,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true,
           }
        },
  }
});



function close_current_buffer()
    local buffer_id = vim.api.nvim_get_current_buf();

    pcall(
        function ()
            vim.cmd("bdelete " .. buffer_id);

        end,
        function (err)
           print("Error: Could not close buffer: " .. err);

        end
    );


end



-- vim.keymap.set("n", "<C-Tab>", ':bnext<CR>', {noremap = true, silent = true});
-- vim.keymap.set("n", "<C-S-Tab>", ':bprev<CR>', {noremap = true, silent = true});
vim.keymap.set("n", "<leader>xx",function() close_current_buffer() end);
-- vim.keymap.set("n", "<leader>b1", function() commands.go_to(1) end);


