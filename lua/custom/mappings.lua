local M = {}

M.Barbar = {
  n = {
    ["<A-.>"] = { ":BufferNext<CR>", "Next Buffer" },
    ["<A-,>"] = { ":BufferPrevious<CR>", "Previous Buffer" },
    ["<A-1>"] = { ":BufferGoto 1<CR>", "Goto buffer 1" },
    ["<A-2>"] = { ":BufferGoto 2<CR>", "Goto buffer 2" },
    ["<A-3>"] = { ":BufferGoto 3<CR>", "Goto buffer 3" },
    ["<A-4>"] = { ":BufferGoto 4<CR>", "Goto buffer 4" },
    ["<A-5>"] = { ":BufferGoto 5<CR>", "Goto buffer 5" },
    ["<A-6>"] = { ":BufferGoto 6<CR>", "Goto buffer 6" },
    ["<A-7>"] = { ":BufferGoto 7<CR>", "Goto buffer 7" },
    ["<A-8>"] = { ":BufferGoto 8<CR>", "Goto buffer 8" },
    ["<A-9>"] = { ":BufferGoto 9<CR>", "Goto buffer 9" },
    ["<leader>cc"] = { ":BufferCloseAllButCurrentOrPinned<CR>", "Close all but keep current or pinned" },
    ["<A-0>"] = { ":BufferLast<CR>", "Goto last buffer" },
  },
}

M.Far = {
  n = {
    ["<A-f>"] = { ":Far<CR>" },
  },
  i = {
    ["<A-f>"] = { ":Far<CR>" },
  },
}

M.Hop = {
  n = {
    ["<leader>hl"] = { ":HopLineStart<CR>" },
  },
}
M.ufo = {
  n = {
    ["<C-p>"] = { ":silent lua require'ufo'.peekFoldedLinesUnderCursor()<CR>", opts = { silent = true } },
  },
  i = {
    ["<C-p>"] = { ":silent lua require'ufo'.peekFoldedLinesUnderCursor()<CR>", opts = { silent = true } },
  },
}
M.SaveFile = {
  i = {
    ["<C-s>"] = {
      "<ESC>:w | lua require'notify'('Saving file ....', 'success', {title = 'System', timeout = 1000})<cr>",
      "Save file in insert mode",
      opts = { silent = true },
    },
  },
  n = {
    ["<C-s>"] = {
      "<ESC>:w | silent lua require'notify'('Saving file ....', 'success', {title = 'System', timeout = 1000})<cr>",
      "Save file in normal mode",
      opts = { silent = true },
    },
  },
}

M.NvimTree = {
  n = {
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.Trouble = {
  n = {
    ["<A-m>"] = { ":TroubleToggle<cr>", "Open trouble window" },
  },
}
M.Telescope = {
  n = {
    ["<leader>ft"] = { ":TodoTelescope<cr>", "   Open Todo Telescope" },
  },
}
M.PreventArrow = {
  n = {
    ["<up>"] = {
      ":silent lua require'notify'('Arrow is stupid', 'error', {title = 'System', timeout = 1000})<cr>",
      "Don't use arrow",
    },
    ["<down>"] = {
      ":silent lua require'notify'('Arrow is stupid', 'error', {title = 'System', timeout = 1000})<cr>",
      "Don't use arrow",
    },
    ["<right>"] = {
      ":silent lua require'notify'('Arrow is stupid', 'error', {title = 'System', timeout = 1000})<cr>",
      "Don't use arrow",
    },
    ["<left>"] = {
      ":silent lua require'notify'('Arrow is stupid', 'error', {title = 'System', timeout = 1000})<cr>",
      "Don't use arrow",
    },
  },
}
return M
