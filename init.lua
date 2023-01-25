

--set.shell = executable('pwsh') ? 'pwsh' : 'powershell'
vim.opt.shell = vim.fn.executable "pwsh" and "pwsh.exe" or "powershell"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -NonInteractive -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.opt.shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

require('options')
require('keymaps')
require('plugins')
require('p-mason')
