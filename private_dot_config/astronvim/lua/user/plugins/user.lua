return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
     {
         "f-person/git-blame.nvim",
         event = "BufRead",
         config = function()
             vim.cmd "highlight default link gitblame SpecialComment"
             vim.g.gitblame_enabled = 1
         end,
     },
     {
         "gennaro-tedesco/nvim-jqx"
     },
     {
         "kylechui/nvim-surround",
         tag = "*", -- Use for stability; omit to use `main` branch for the latest features
         config = function()
             require("nvim-surround").setup({
                 -- Configuration here, or leave empty to use defaults
             })
         end
     },
     {
         "pedrohdz/vim-yaml-folds"
     },
     {
         "ray-x/lsp_signature.nvim",
         event = "BufRead",
         config = function()
             require("lsp_signature").setup()
         end,
     },
}
