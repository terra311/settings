local M = {}
local map = require("utils").map

function M.setup()
  local builtin = require("telescope.builtin")
  local actions = require("telescope.actions")
  require("telescope").setup({
    defaults = {
      mappings = {
        n = {
          ["u"] = actions.move_selection_previous,
          ["e"] = actions.move_selection_next,
          ["s"] = actions.select_horizontal,
          ["v"] = actions.select_vertical,
        },
        i = {
          ["<C-s>"] = actions.select_horizontal,
        },
      },
    },
  })

  map("n", "<leader>p", builtin.find_files)
end

return M
