require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
require('telescope').load_extension('fzf')


local map = vim.api.nvim_set_keymap
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {noremap = true})
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {noremap = true})
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {noremap = true})
--map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {noremap = true})
map("n", "<leader>nv", "<cmd>lua require\'config.telescope\'.search_dotfiles()<CR>", {noremap = true, silent = true})

local M = {}
M.search_dotfiles = function()
  require('telescope.builtin').find_files({
    prompt_title = "< neovim_dot >",
    cwd = "~/.config/nvim/"
  })
end
return M
