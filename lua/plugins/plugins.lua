if true then
  return {

    { "ellisonleao/gruvbox.nvim" },
    {
      "EdenEast/nightfox.nvim",
      opts = {
        options = {

          dim_inactive = true,
        },
      },
    },
    -- {
    -- "flazz/vim-colorschemes",
    -- },
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "gruvbox",
      },
    },
  }
end
