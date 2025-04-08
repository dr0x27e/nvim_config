function _FLOAT_TERM_IN_FILE_DIR()
  -- Save current buffer
  vim.cmd("w")

  -- Get the directory of the current file
  local file_dir = vim.fn.expand('%:p:h')

  -- Create a new unlisted buffer
  local buf = vim.api.nvim_create_buf(false, true)

  -- Floating window size and position
  local width = math.floor(vim.o.columns * 0.5)
  local height = math.floor(vim.o.lines * 0.5)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local opts = {
    style = "minimal",
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    border = "rounded",
  }

  -- Open floating window
  vim.api.nvim_open_win(buf, true, opts)

  -- Start terminal in the file's directory
  vim.fn.termopen(vim.o.shell, { cwd = file_dir })
  vim.cmd("startinsert")
end

-- Keybind it (e.g. <leader>r for "run")
vim.keymap.set("n", "<leader>r", _FLOAT_TERM_IN_FILE_DIR, { noremap = true, silent = true })

