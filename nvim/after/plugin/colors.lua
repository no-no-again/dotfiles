function Color(color)
    color = color or "alabaster"
    vim.cmd.colorscheme(color)
    vim.opt.background = "light"
end

Color()
