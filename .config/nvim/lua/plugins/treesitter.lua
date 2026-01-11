-- cangjie 语法高亮
local treesitter_cangjie = {
    url = "https://gitcode.com/Cangjie-SIG/tree-sitter-cangjie.git",
    -- copy queries into runtimepath on install so nvim-treesitter can find them
    build = function()
        -- tree-sitter-cangjie 插件中的 query 文件在 queries 目录下，需要复制到 queries/cangjie 目录下。
        local plugin_dir = vim.fn.stdpath("data").."/lazy/tree-sitter-cangjie"
        local src = plugin_dir.."/queries"
        local dst = plugin_dir.."/queries/cangjie"
        if vim.fn.isdirectory(dst) == 1 then
            vim.fn.system({ 'sh', '-c', 'rm -f ' .. vim.fn.shellescape(dst) })
        end
        vim.fn.mkdir(dst, "p")
        if vim.fn.isdirectory(src) == 1 then
            -- copy each .scm file from src to dst
            local files = vim.fn.glob(src .. '/*.scm', 0, 1)
            for _, f in ipairs(files) do
                if f ~= "" then
                    vim.fn.system({ 'cp', f, dst })
                end
            end
        end
    end,
}

return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
        treesitter_cangjie
    },
    opts = {
        ensure_installed = {
            "lua",
            "nu",
            "cangjie"
        },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        },
        indent = {
            enable = true
        }
    },
    config = function(_, opts)
        local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
        parser_configs.cangjie = {
            install_info = {
                url ="https://gitcode.com/Cangjie-SIG/tree-sitter-cangjie",
                files = { "src/parser.c", "src/scanner.c" },
                branch = "main",
                generate_requires_npm = false,
                requires_generate_from_grammar = false, -- 使用预生成的文件
            },
            filetype = "cangjie",
        }

        require("nvim-treesitter.configs").setup(opts)
    end,
}
