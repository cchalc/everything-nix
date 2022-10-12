local M = {}

function M.setup()
  local opts = function(desc)
    return {
      desc = desc,
      silent = true
    }
  end
  vim.keymap.set({ "n", "v", "o" }, "qf", "<Plug>(easymotion-bd-f)", opts("Hop to char"))
  vim.keymap.set({ "n", "v", "o" }, "qj", "<Plug>(easymotion-overwin-f2)", opts("Hop to char pair"))
  vim.keymap.set({ "n", "v", "o" }, "qw", ":silent <Plug>(easymotion-bd-w)", opts("Hop to word"))
  vim.keymap.set({ "n", "v", "o" }, "qL", "silent <Plug>(easymotion-bd-L)", opts("Hop to line (?)"))

  local status, wk = pcall(require, "which-key")

  if status then
    wk.register({
      q = {
        name = "Easymotion"
      }
    })
  end
end

return M
