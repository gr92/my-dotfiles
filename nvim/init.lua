-- ╭──────────────────────────────────────────────────────────╮
-- │      init.lua by Gabriel Rivera -> GabrielRIP            │
-- │      > nvim la mas actual y stable                       │
-- │      > Language Servers: comprobar lsp y linters         │
-- ╰──────────────────────────────────────────────────────────╯

-- PERFORMANCE: Acelera la carga de modulos Lua en Nvim
local impatient_ok, impatient = pcall(require, 'impatient')
if impatient_ok then impatient.enable_profile() end

-- PERFORMANCE: Para que no sea compatible con 'vi', pero no de golpe
if vim.opt.compatible == true then vim.opt.compatible = false end

require('settings') -- configuracones 'sets'
require ('packages') -- plugins
require 'maps' -- keyboard shortcuts
vim.cmd('source $HOME/.config/nvim/lua/keys.vim')
require ('autocmd') -- Automatizaciones
require 'utils' -- others

-- Colour overrides
vim.cmd([[
	highlight! link CursorLineNr MatchParen
	highlight! link WinSeparator LineNr
]])
