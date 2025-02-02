vim.loader.enable()

vim.g.mapleader = ','

if vim.fn.has('termguicolors') then
  vim.opt.termguicolors = true
end
vim.g.nvcode_termcolors = 256

vim.api.nvim_set_hl(0, 'LspInlayHint', {
  fg = '#74748d',
})

if vim.fn.has('nvim') then
  vim.fn.environ()['NVIM_TUI_ENABLE_TRUE_COLOR'] = 1
end
-- vim.opt.guifont = 'Fira Code:h14'
vim.opt.swapfile = false

vim.g.kommentary_create_default_mappings = 0

vim.opt.compatible = false             -- Use Vim defaults (much better!)
vim.opt.showcmd = true                 -- Show (partial) command in status line.
vim.opt.mouse = ''
vim.opt.showmatch = true               -- Show matching brackets.
vim.opt.ruler = true                   -- Show the line and column numbers of the cursor
vim.opt.ignorecase = true              -- Do case insensitive matching
vim.opt.incsearch = true               -- Incremental search
vim.opt.autowrite = true               -- Automatically save before commands like :next and :make
vim.opt.history = 10000
vim.opt.backspace = 'indent,eol,start' -- allow backspacing over everything in insert mode
vim.opt.smartindent = true
vim.opt.autoindent = true              -- always set autoindenting on
vim.opt.backup = false                 -- do not keep a backup file
vim.opt.number = true
vim.opt.textwidth = 80                 -- set text width to 80 chars.
vim.opt.tabpagemax = 30                --how many tabs to allow at max
vim.opt.hlsearch = true
-- vim.opt.viminfo = '50,"100,:50,%,n~/.viminfo'
vim.opt.laststatus = 2
vim.opt.encoding = 'utf-8'
vim.opt.so = 5 --cursor cant get closer than 5 lines to end of screen
vim.opt.spell = true
vim.opt.spelllang = { 'en_us' }
vim.opt.hidden = true
vim.opt.modeline = true
vim.opt.tagstack = true

-- always show the sign column. prevent smoothcursor from jumping the window
vim.opt.signcolumn = 'yes:1'

-- do not show more than 20 completion items
vim.opt.pumheight = 20

vim.opt.completeopt = 'menu,menuone,noselect'

-- default yank to clip
vim.opt.clipboard = 'unnamedplus'

-- this controls saving swap and highlighting var under cursor
vim.opt.updatetime = 100

-- how much to wait for key sequence to complete
vim.opt.timeoutlen = 500

vim.opt.splitkeep = 'screen'

vim.opt.diffopt = vim.opt.diffopt + 'linematch:60'

vim.opt.shada = [[!,'100,<50,s10,h,%]]

--spelling highlight
vim.api.nvim_set_hl(0, 'SpellBad', {
  reverse = true,
  ctermfg = 'white',
  ctermbg = 'darkred',
  fg = '#ffffff',
  bg = '#7f0000',
  underline = true,
})
vim.api.nvim_set_hl(0, 'SpellCap', {
  fg = '#ffffff',
  bg = '#7f007f',
})
vim.api.nvim_set_hl(0, 'SpellRare', {
  fg = '#ffffff',
  bg = '#00007f',
  underline = true,
})
vim.api.nvim_set_hl(0, 'SpellLocal', {
  reverse = true,
  ctermfg = 'black',
  ctermbg = 'darkgreen',
  fg = '#ffffff',
  bg = '#7f0000',
  underline = true,
})


--folding highlight
vim.api.nvim_set_hl(0, 'Folded', {
  standout = true,
  ctermfg = 'LightBlue',
  ctermbg = 'DarkGrey',
})

vim.cmd([[
augroup replacegJ
	fun! JoinSpaceless()
		if getline('.')[-1:-1] == '(' || getline('.')[-1:-1] == '[' || getline('.')[-1:-1] == '{'
			execute 'normal! gJ'
			" Character under cursor is whitespace?
			if matchstr(getline('.'), '\%' . col('.') . 'c.') =~ '\s'
				" Then remove it!
				execute 'normal dw'
			endif
		else
			execute 'normal! J'
		endif
	endfun

	" Map it to a key
	nnoremap J :call JoinSpaceless()<CR>
augroup end
]])


vim.api.nvim_create_user_command('TSReload', function()
  vim.cmd([[
      write
      edit
      TSBufEnable highlight
  ]])
end, {})

-- highlight whitespace
vim.g.better_whitespace_ctermcolor = 'red'
vim.g.better_whitespace_guicolor = 'red'

--iron
vim.g.iron_map_defaults = 0
vim.g.iron_map_extended = 0

vim.api.nvim_set_hl(0, 'MatchParen', {
  ctermbg = 'darkblue',
  bg = '#a0a0a0',
  italic = true,
})
vim.api.nvim_set_hl(0, 'Search', {
  bg = 'red',
})

-- matchup
vim.g.matchup_matchparen_deferred = 5

vim.api.nvim_set_hl(0, 'Normal', {
  fg = 'wheat',
  bg = 'black',
})
