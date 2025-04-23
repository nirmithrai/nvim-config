-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- lua/config/debug.lua
local api = vim.api

-- Inserts console.log("<var>:", <var>); below the current line
function _G.insert_console_log()
  local var = vim.fn.expand("<cword>")
  local indent = vim.fn.indent(vim.fn.line("."))
  local line = string.rep(" ", indent) .. 'console.log("' .. var .. ':", ' .. var .. ")"
  api.nvim_buf_set_lines(0, vim.fn.line("."), vim.fn.line("."), false, { line })
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "javascriptreact" },
  callback = function()
    -- map <leader>p to insert_console_log only in these filetypes
    vim.keymap.set("n", "<leader>p", insert_console_log, {
      buffer = true,
      desc = "Insert console.log for var under cursor",
    })
  end,
})
