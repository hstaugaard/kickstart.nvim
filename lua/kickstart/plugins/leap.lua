return {
  "https://codeberg.org/andyg/leap.nvim",
  config = function()
    vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap)')
    vim.keymap.set('n',               'S', '<Plug>(leap-from-window)')
    -- E.g., `gs{leap}$y` or `ygs{leap}$`, where {leap}, as usual, means
    -- {char1}{char2}{label?}. The linewise version can also take [count],
    -- e.g. `d2gS{leap}` deletes two lines.
    vim.keymap.set({ 'n', 'o' }, 'gs', '<Plug>(leap-remote)')
    vim.keymap.set({ 'n', 'o' }, 'gS', '<Plug>(leap-remote-linewise)')
    -- Useful shortcut for a frequent operation: the same as remote-linewise,
    -- except it auto-triggers even without [count] (`yrr{leap}` copies a line).
    vim.keymap.set({ 'o' },      'rr', '<Plug>(leap-remote-line)')
    -- These commands expect another character as input before leaping, and
    -- select the given text object at the destination (`yarp{leap}`).
    vim.keymap.set({ 'x', 'o' }, 'ar', '<Plug>(leap-remote-text-object)')
    vim.keymap.set({ 'x', 'o' }, 'ir', '<Plug>(leap-remote-inner-text-object)')
  end,
  lazy = false,
}