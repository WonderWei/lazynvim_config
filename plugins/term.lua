return
{
  {
    {
      'akinsho/toggleterm.nvim', 
      version = "*",
      opts = {--[[ things you want to change go here]]}},
      vim.keymap.set('n', '<leader>tt', ':ToggleTerm direction=float <CR>')
  }

}
