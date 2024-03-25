local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  print("Error")
  return
end

vim.g.nvim_tree_show_icons = {
  folders = 0,
  files = 0,
  git = 0,
  folder_arrows = 0,
}

nvim_tree.setup({
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false,
        diagnostics = false,
        modified = false
      }
    }
  }
})

vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<cr>", {silent = true, noremap = true})
