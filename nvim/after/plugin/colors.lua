function SetColor(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function SetIndent()
    print("===============")
    print(vim.bo.filetype)
    print("===============")
    if vim.bo.filetype == "javascript" then
        vim.bo.tabstop = 2
        vim.bo.softtabstop = 2
        vim.bo.shiftwidth = 2
    end
end

SetIndent()
SetColor()
