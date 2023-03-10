math.randomseed(os.time())
local headers = {
    -- {
    --         "░██╗░░░░░░░██╗░█████╗░░█████╗░██╗░░██╗",
    --         "░██║░░██╗░░██║██╔══██╗██╔══██╗██║░██╔╝",
    --         "░╚██╗████╗██╔╝███████║███████║█████═╝░",
    --         "░░████╔═████║░██╔══██║██╔══██║██╔═██╗░",
    --         "░░╚██╔╝░╚██╔╝░██║░░██║██║░░██║██║░╚██╗",
    --         "░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝",
    --         " ",
    --
    --         "   ██╗░░░░░░█████╗░██████╗░░██████╗",
    --         "   ██║░░░░░██╔══██╗██╔══██╗██╔════╝",
    --         "   ██║░░░░░███████║██████╦╝╚█████╗░",
    --         "   ██║░░░░░██╔══██║██╔══██╗░╚═══██╗",
    --         "   ███████╗██║░░██║██████╦╝██████╔╝",
    --         "   ╚══════╝╚═╝░░╚═╝╚═════╝░╚═════╝░",
    -- },
    {
        " █     █░ ▄▄▄      ▄▄▄       ██ ▄█▀   ",
        "▓█░ █ ░█░▒████▄   ▒████▄     ██▄█▒    ",
        "▒█░ █ ░█ ▒██  ▀█▄ ▒██  ▀█▄  ▓███▄░    ",
        "░█░ █ ░█ ░██▄▄▄▄██░██▄▄▄▄██ ▓██ █▄    ",
        "░░██▒██▓  ▓█   ▓██▒▓█   ▓██▒▒██▒ █▄   ",
        "░ ▓░▒ ▒   ▒▒   ▓▒█░▒▒   ▓▒█░▒ ▒▒ ▓▒   ",
        "  ▒ ░ ░    ▒   ▒▒ ░ ▒   ▒▒ ░░ ░▒ ▒░   ",
        "  ░   ░    ░   ▒    ░   ▒   ░ ░░ ░    ",
        "    ░          ░  ░     ░  ░░  ░      ",
        "                                      ",
        "    ██▓    ▄▄▄       ▄▄▄▄     ██████  ",
        "   ▓██▒   ▒████▄    ▓█████▄ ▒██    ▒  ",
        "   ▒██░   ▒██  ▀█▄  ▒██▒ ▄██░ ▓██▄    ",
        "   ▒██░   ░██▄▄▄▄██ ▒██░█▀    ▒   ██▒ ",
        "   ░██████▒▓█   ▓██▒░▓█  ▀█▓▒██████▒▒ ",
        "   ░ ▒░▓  ░▒▒   ▓▒█░░▒▓███▀▒▒ ▒▓▒ ▒ ░ ",
        "   ░ ░ ▒  ░ ▒   ▒▒ ░▒░▒   ░ ░ ░▒  ░ ░ ",
        "     ░ ░    ░   ▒    ░    ░ ░  ░  ░   ",
        "       ░  ░     ░  ░ ░            ░   ",
        "                          ░           ",
    },
}

local function get_random_header()
    return headers[math.random(#headers)]
end

-- vim.opt.shiftwidth = 4
-- vim.opt.tabstop = 4
-- vim.opt.expandtab = true
-- vim.guifont = "CaskaydiaCove NF"
-- vim.opt.smartcase = true
-- vim.opt.smartindent = true
-- vim.opt.autoindent = true
-- vim.opt.clipboard = "unnamedplus"
-- vim.opt.list = true
-- vim.opt.listchars:append "eol:↴"
vim.opt.mouse = "a"
--
-- vim.opt.wrap = false
--
-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true
--
-- vim.opt.hlsearch = false
-- vim.opt.incsearch = true
--
-- vim.opt.termguicolors = true
--
-- vim.opt.scrolloff = 8
-- vim.opt.signcolumn = "yes"
-- vim.opt.isfname:append("@-@")

vim.g.material_style = "deep ocean"
--[[ vim.opt.colorcolumn = "120" ]]

vim.opt.fillchars      = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.opt.foldcolumn     = "0"
vim.opt.foldlevel      = 99
vim.opt.foldlevelstart = -1
-- vim.opt.foldlevel = 20
vim.opt.foldmethod     = "expr"
vim.opt.foldexpr       = "nvim_treesitter#foldexpr()"
vim.o.foldtext         = [[substitute(getline(v:foldstart),'\\\\t',repeat('\\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . '  ' . (v:foldend - v:foldstart + 1) . ' lines ']]

if vim.g.neovide then
    vim.g.neovide_cursor_vfx_mode = "railgun"
end

local config = {

    -- Configure AstroNvim updates
    updater = {
        remote = "origin", -- remote to use
        channel = "stable", -- "stable" or "nightly"
        version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
        branch = "main", -- branch name (NIGHTLY ONLY)
        commit = nil, -- commit hash (NIGHTLY ONLY)
        pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
        skip_prompts = false, -- skip prompts about breaking changes
        show_changelog = true, -- show the changelog after performing an update
        auto_reload = false, -- automatically reload and sync packer after a successful update
        auto_quit = false, -- automatically quit the current session after a successful update
        -- remotes = { -- easily add new remotes to track
        --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
        --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
        --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
        -- },
    },

    -- Set colorscheme to use
    -- colorscheme = "default_theme",
    -- colorscheme = "tokyonight-night",
    colorscheme = "material",

    -- Add highlight groups in any theme
    highlights = {
        -- set highlights for all themes
        -- use a function override to let us use lua to retrieve colors from highlight group
        -- there is no default table so we don't need to put a parameter for this function
        init = function()
            -- get highlights from highlight groups
            local normal = astronvim.get_hlgroup "Normal"
            local fg, bg = normal.fg, normal.bg
            local bg_alt = astronvim.get_hlgroup("Visual").bg
            local green = astronvim.get_hlgroup("String").fg
            local red = astronvim.get_hlgroup("Error").fg
            -- return a table of highlights for telescope based on colors gotten from highlight groups
            return {
                TelescopeBorder = { fg = bg_alt, bg = bg },
                TelescopeNormal = { bg = bg },
                TelescopePreviewBorder = { fg = bg, bg = bg },
                TelescopePreviewNormal = { bg = bg },
                TelescopePreviewTitle = { fg = bg, bg = green },
                TelescopePromptBorder = { fg = bg_alt, bg = bg_alt },
                TelescopePromptNormal = { fg = fg, bg = bg_alt },
                TelescopePromptPrefix = { fg = red, bg = bg_alt },
                TelescopePromptTitle = { fg = bg, bg = red },
                TelescopeResultsBorder = { fg = bg, bg = bg },
                TelescopeResultsNormal = { bg = bg },
                TelescopeResultsTitle = { fg = bg, bg = bg },
            }
        end,
    },

    -- set vim options here (vim.<first_key>.<second_key> = value)
    options = {
        opt = {
            -- set to true or false etc.
            relativenumber = true, -- sets vim.opt.relativenumber
            number = true, -- sets vim.opt.number
            spell = false, -- sets vim.opt.spell
            signcolumn = "auto", -- sets vim.opt.signcolumn to auto
            wrap = true, -- sets vim.opt.wrap
            shiftwidth = 4,
            tabstop = 4,
            expandtab = true,
            guifont = "CaskaydiaCove NF",
            smartcase = true,
            smartindent = true,
            autoindent = true,
            clipboard = "unnamedplus",
            list = true,
            mouse = "a",

            swapfile = false,
            backup = false,
            undodir = os.getenv("HOME") .. "/.vim/undodir",
            undofile = true,

            hlsearch = false,
            incsearch = true,

            termguicolors = true,

            scrolloff = 8,

            -- isfname:append("@-@"),
        },
        g = {
            mapleader = " ", -- sets vim.g.mapleader
            autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
            cmp_enabled = true, -- enable completion at start
            autopairs_enabled = true, -- enable autopairs at start
            diagnostics_enabled = true, -- enable diagnostics at start
            status_diagnostics_enabled = true, -- enable diagnostics in statusline
            icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
            ui_notifications_enabled = true, -- disable notifications when toggling UI elements
        },
    },
    -- If you need more control, you can use the function()...end notation
    -- options = function(local_vim)
    --   local_vim.opt.relativenumber = true
    --   local_vim.g.mapleader = " "
    --   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
    --   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
    --
    --   return local_vim
    -- end,

    header = get_random_header(),


    -- Default theme configuration
    default_theme = {
        -- Modify the color palette for the default theme
        colors = {
            fg = "#abb2bf",
            bg = "#1e222a",
        },
        highlights = function(hl) -- or a function that returns a new table of colors to set
            local C = require "default_theme.colors"

            hl.Normal = { fg = C.fg, bg = C.bg }

            -- New approach instead of diagnostic_style
            hl.DiagnosticError.italic = true
            hl.DiagnosticHint.italic = true
            hl.DiagnosticInfo.italic = true
            hl.DiagnosticWarn.italic = true

            return hl
        end,
        -- enable or disable highlighting for extra plugins
        plugins = {
            aerial = true,
            beacon = false,
            bufferline = true,
            cmp = true,
            dashboard = true,
            highlighturl = true,
            hop = true,
            indent_blankline = true,
            lightspeed = false,
            ["neo-tree"] = true,
            notify = true,
            ["nvim-tree"] = false,
            ["nvim-web-devicons"] = true,
            rainbow = true,
            symbols_outline = false,
            telescope = true,
            treesitter = true,
            vimwiki = false,
            ["which-key"] = true,
        },
    },

    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
        virtual_text = true,
        underline = true,
    },

    -- Extend LSP configuration
    lsp = {
        -- enable servers that you already have installed without mason
        servers = {
            -- "pyright"
        },
        formatting = {
            -- control auto formatting on save
            format_on_save = {
                enabled = true, -- enable or disable format on save globally
                allow_filetypes = { -- enable format on save for specified filetypes only
                    -- "go",
                },
                ignore_filetypes = { -- disable format on save for specified filetypes
                    -- "python",
                },
            },
            disabled = { -- disable formatting capabilities for the listed language servers
                -- "sumneko_lua",
            },
            timeout_ms = 1000, -- default format timeout
            -- filter = function(client) -- fully override the default formatting function
            --   return true
            -- end
        },
        -- easily add or disable built in mappings added during LSP attaching
        mappings = {
            n = {
                -- ["<leader>lf"] = false -- disable formatting keymap
            },
        },
        -- add to the global LSP on_attach function
        -- on_attach = function(client, bufnr)
        --
        -- end,

        -- override the mason server-registration function
        -- server_registration = function(server, opts)
        --   require("lspconfig")[server].setup(opts)
        -- end,

        -- Add overrides for LSP server settings, the keys are the name of the server
        ["server-settings"] = {
            -- example for addings schemas to yamlls
            -- yamlls = { -- override table for require("lspconfig").yamlls.setup({...})
            --   settings = {
            --     yaml = {
            --       schemas = {
            --         ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
            --         ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
            --         ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
            --       },
            --     },
            --   },
            -- },
        },
    },

    -- Mapping data with "desc" stored directly by vim.keymap.set().
    --
    -- Please use this mappings table to set keyboard mapping since this is the
    -- lower level configuration and more robust one. (which-key will
    -- automatically pick-up stored data by this setting.)
    mappings = {
        -- first key is the mode
        n = {
            -- second key is the lefthand side of the map
            -- mappings seen under group name "Buffer"
            ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
            ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
            ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
            ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
            -- quick save
            -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

            -- Zen Mode & Twilight
            ["<leader>zz"] = { "<cmd>ZenMode<CR>", desc = "Toggle Zen Mode" },
            ["<leader>zt"] = { "<cmd>Twilight<CR>", desc = "Toggle Twilight Only" },

            -- Hop
            ["s"] = { "<cmd>HopChar1<cr>", desc = "Hop using 1 char" },
            ["S"] = { "<cmd>HopChar2<cr>", desc = "Hop using 2 char" },
            ["sl"] = { "<cmd>HopLineStart<cr>", desc = "Hop to the line start" },
            ["sw"] = { "<cmd>HopWord<cr>", desc = "Hop to a word" },
            ["sa"] = { "<cmd>HopAnywhere<cr>", desc = "Hop Anywhere" },

            ["f"] = {
                function()
                    require('hop').hint_char1({
                        direction = require('hop.hint').HintDirection.AFTER_CURSOR,
                        current_line_only = true
                    })
                end,
                desc = "Find a character in current line after the cursor"
            },

            ["F"] = {
                function()
                    require('hop').hint_char1({
                        direction = require('hop.hint').HintDirection.BEFORE_CURSOR,
                        current_line_only = true
                    })
                end,
                desc = "Find a character in current line before the cursor"

            },

            ["t"] = {
                function()
                    require('hop').hint_char1({
                        direction = require('hop.hint').HintDirection.AFTER_CURSOR,
                        current_line_only = true,
                        hint_offset = -1,
                    })
                end,
                desc = "Jump a character in current line after the cursor"

            },

            ["T"] = {
                function()
                    require('hop').hint_char1({
                        direction = require('hop.hint').HintDirection.BEFORE_CURSOR,
                        current_line_only = true,
                        hint_offset = -1,
                    })
                end,
                desc = "Jump a character in current line before the cursor"
            },

            -- Telescope Custom
            ["<leader>f/"] = { function() require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes')
                    .get_dropdown {
                        winblend = 10,
                        previewer = false,
                    })
            end, desc = "[/] Fuzzily search in current buffer]" },

            -- Terminal
            ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },

            ["<leader>?"] = { "<cmd>Cheat<cr>", desc = "Use Cheat.sh" },


            -- Improved navigation
            ["<C-d>"] = { "<C-d>zz", desc = "Scroll down" },
            ["<C-u>"] = { "<C-u>zz", desc = "Scroll up" },

            -- Improved Paste
            ["<leader>p"] = { "\"_dP", desc = "Paste without overriding the buffer" },

            ["<A-Up>"] = { "<C-w>k", desc = "Move to above split" },
            ["<A-Down>"] = { "<C-w>j", desc = "Move to below split" },
            ["<A-Left>"] = { "<C-w>h", desc = "Move to left split" },
            ["<A-Right>"] = { "<C-w>l", desc = "Move to right split" },

            -- Trouble
            ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
            ["<leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>",
                desc = "Toggle Trouble for Workspace diagnostics" },
            ["<leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<cr>",
                desc = "Toggle Trouble for Document diagnostics" },
            ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Toggle Trouble Local List" },
            ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Toggle Trouble for Quick Fix" },
            ["gR"] = { "<cmd>TroubleToggle lsp_references<cr>", desc = "Toggle Trouble for LSP References" },

        },
        v = {
            -- Move Lines

            ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move selected visual down" },
            ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move selected visual down" },

            -- Hop
            ["s"] = { "<cmd>HopChar1<cr>", desc = "Hop using 1 char" },
            ["S"] = { "<cmd>HopChar2<cr>", desc = "Hop using 2 char" },
            ["sl"] = { "<cmd>HopLineStart<cr>", desc = "Hop to the line start" },
            ["sw"] = { "<cmd>HopWord<cr>", desc = "Hop to a word" },
            ["sa"] = { "<cmd>HopAnywhere<cr>", desc = "Hop Anywhere" },

            ["f"] = {
                function()
                    require('hop').hint_char1({
                        direction = require('hop.hint').HintDirection.AFTER_CURSOR,
                        current_line_only = true
                    })
                end,
                desc = "Find a character in current line after the cursor"
            },

            ["F"] = {
                function()
                    require('hop').hint_char1({
                        direction = require('hop.hint').HintDirection.BEFORE_CURSOR,
                        current_line_only = true
                    })
                end,
                desc = "Find a character in current line before the cursor"

            },

            ["t"] = {
                function()
                    require('hop').hint_char1({
                        direction = require('hop.hint').HintDirection.AFTER_CURSOR,
                        current_line_only = true,
                        hint_offset = -1,
                    })
                end,
                desc = "Jump a character in current line after the cursor"

            },

            ["T"] = {
                function()
                    require('hop').hint_char1({
                        direction = require('hop.hint').HintDirection.BEFORE_CURSOR,
                        current_line_only = true,
                        hint_offset = -1,
                    })
                end,
                desc = "Jump a character in current line before the cursor"
            }
        },
        t = {
            -- Terminal
            ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
        },
    },

    icons = {
        -- VimIcon = "",
        VimIcon = "",
        ScrollText = "",
        GitBranch = "",
        GitAdd = "",
        GitChange = "",
        GitDelete = "",
    },

    -- modify variables used by heirline but not defined in the setup call directly
    heirline = {
        -- define the separators between each section
        separators = {
            -- left = { "", " " }, -- separator for the left side of the statusline
            -- right = { " ", "" }, -- separator for the right side of the statusline
            left = { "", " " }, -- separator for the left side of the statusline
            right = { " ", "" }, -- separator for the right side of the statusline

        },
        -- add new colors that can be used by heirline
        colors = function(hl)
            -- use helper function to get highlight group properties
            local comment_fg = astronvim.get_hlgroup("Comment").fg
            hl.git_branch_fg = comment_fg
            hl.git_added = comment_fg
            hl.git_changed = comment_fg
            hl.git_removed = comment_fg
            hl.lsp_fg = comment_fg
            hl.comment_bg = comment_fg
            hl.blank_bg = astronvim.get_hlgroup("Folded").fg
            hl.file_info_bg = astronvim.get_hlgroup("Visual").bg
            hl.nav_icon_bg = astronvim.get_hlgroup("String").fg
            hl.folder_icon_bg = astronvim.get_hlgroup("Error").fg
            return hl
        end,
    },

    -- Configure plugins
    plugins = {
        init = {
            -- You can disable default plugins as follows:
            -- ["goolord/alpha-nvim"] = { disable = true },

            -- You can also add new plugins here as well:
            -- Add plugins, the packer syntax without the "use"
            -- { "andweeb/presence.nvim" },

            {
                "ray-x/lsp_signature.nvim",
                event = "BufRead",
                config = function()
                    require("lsp_signature").setup()
                end,
            },

            -- We also support a key value style plugin definition similar to NvChad:
            -- ["ray-x/lsp_signature.nvim"] = {
            --   event = "BufRead",
            --   config = function()
            --     require("lsp_signature").setup()
            --   end,
            -- },
        },
        -- All other entries override the require("<key>").setup({...}) call for default plugins
        ["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`
            -- config variable is the default configuration table for the setup function call
            local null_ls = require "null-ls"

            -- Check supported formatters and linters
            -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
            -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
            config.sources = {
                -- Set a formatter
                -- null_ls.builtins.formatting.stylua,
                null_ls.builtins.diagnostics.pylint.with({
                    prefer_local = ".venv/bin",
                    method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
                    -- condition = function(utils)
                    --     return utils.root_has_file({ ".pylintrc", "setup.cfg" })
                    -- end
                    -- diagnostics_postprocess = function(diagnostic)
                    -- diagnostic.code = diagnostic.message_id
                    -- end,
                }),
                null_ls.builtins.formatting.isort.with({
                    -- method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
                    -- prefer_local = ".venv/bin",
                    --
                    -- condition = function(utils)
                    --     return utils.root_has_file({ "setup.cfg" })
                    -- end
                }),
                null_ls.builtins.diagnostics.flake8.with({
                    method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
                    -- prefer_local = ".venv/bin",
                    -- condition = function(utils)
                    --     return utils.root_has_file({ "setup.cfg" })
                    -- end
                }),
                null_ls.builtins.formatting.black.with({
                    -- method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
                    -- prefer_local = ".venv/bin",
                    -- condition = function(utils)
                    --     return utils.root_has_file({ "setup.cfg" })
                    -- end
                }),
                null_ls.builtins.diagnostics.mypy.with({
                    method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
                    prefer_local = ".venv/bin",
                    -- condition = function(utils)
                    --     return utils.root_has_file({ "setup.cfg" })
                    -- end
                }),
                -- null_ls.builtins.formatting.prettier,
            }
            return config -- return final config table
        end,
        treesitter = { -- overrides `require("treesitter").setup(...)`
            ensure_installed = { "lua", "python", "html", "css", "javascript", "typescript", "bash" },
            highlight = { enable = true },
            indent = {
                enable = false,
                -- disable = { "python" }

            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '<c-space>',
                    node_incremental = '<c-space>',
                    scope_incremental = '<c-s>',
                    node_decremental = '<c-backspace>',
                },
            },
            rainbow = {
                enable = true,
                disable = {},
                extended_mode = false,
                max_files_lines = nil,
            },
            autopairs = {
                enable = true,
            },
            context_commentstring = {
                enable = true,
                enable_autocmd = false,
            },
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
                    keymaps = {
                        -- You can use the capture groups defined in textobjects.scm
                        ['aa'] = '@parameter.outer',
                        ['ia'] = '@parameter.inner',
                        ['af'] = '@function.outer',
                        ['if'] = '@function.inner',
                        ['ac'] = '@class.outer',
                        ['ic'] = '@class.inner',
                    },
                },
                move = {
                    enable = true,
                    set_jumps = true, -- whether to set jumps in the jumplist
                    goto_next_start = {
                        [']m'] = '@function.outer',
                        [']]'] = '@class.outer',
                    },
                    goto_next_end = {
                        [']M'] = '@function.outer',
                        [']['] = '@class.outer',
                    },
                    goto_previous_start = {
                        ['[m'] = '@function.outer',
                        ['[['] = '@class.outer',
                    },
                    goto_previous_end = {
                        ['[M'] = '@function.outer',
                        ['[]'] = '@class.outer',
                    },
                },
                swap = {
                    enable = true,
                    swap_next = {
                        ['<leader>a'] = '@parameter.inner',
                    },
                    swap_previous = {
                        ['<leader>A'] = '@parameter.inner',
                    },
                },
                playground = {
                    enable = true,
                    disable = {},
                    updatetime = 25,
                    persist_queries = false
                },
                textsubjects = {
                    enable = true,
                    prev_selection = ',', -- (Optional) keymap to select the previous selection
                    keymaps = {
                        ['.'] = 'textsubjects-smart',
                        [';'] = 'textsubjects-container-outer',
                        ['i;'] = 'textsubjects-container-inner',
                    },
                },

            },
        },
        -- use mason-lspconfig to configure LSP installations
        ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
            -- ensure_installed = { "sumneko_lua" },
        },
        -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
        ["mason-null-ls"] = { -- overrides `require("mason-null-ls").setup(...)`
            -- ensure_installed = { "prettier", "stylua" },
        },
        ["mason-nvim-dap"] = { -- overrides `require("mason-nvim-dap").setup(...)`
            -- ensure_installed = { "python" },
        },
        -- override the heirline setup call
        heirline = function(config)
            -- the first element of the configuration table is the statusline
            config[1] = {
                -- default highlight for the entire statusline
                hl = { fg = "fg", bg = "bg" },
                -- each element following is a component in astronvim.status module

                -- add the vim mode component
                astronvim.status.component.cmd_info(),
                astronvim.status.component.mode {
                    -- enable mode text with padding as well as an icon before it
                    mode_text = { hl = { bold = true },
                        icon = { kind = "VimIcon", padding = { right = 1, left = 1 } } },
                    -- define the highlight color for the text
                    hl = { fg = "bg" },
                    padding = { left = 1, right = 1 },
                    -- surround the component with a separators
                    surround = {
                        -- it's a left element, so use the left separator
                        separator = "none",
                        -- set the color of the surrounding based on the current mode using astronvim.status module
                        color = function() return { main = astronvim.status.hl.mode_bg(),
                                right = "blank_bg" }
                        end,
                    },
                },
                -- we want an empty space here so we can use the component builder to make a new section with just an empty string
                -- astronvim.status.component.builder {
                --     { provider = "" },
                --     -- define the surrounding separator and colors to be used inside of the component
                --     -- and the color to the right of the separated out section
                --     surround = { separator = "left",
                --         color = { main = "blank_bg", right = "file_info_bg" } },
                -- },
                -- add a section for the currently opened file information
                astronvim.status.component.file_info {
                    -- enable the file_icon and disable the highlighting based on filetype
                    file_icon = { hl = true, padding = { left = 1 } },
                    filename = { fallback = "Empty" },
                    -- add padding
                    padding = { left = 1, right = 1 },
                    -- define the section separator
                    surround = { separator = "none", condition = false },
                },
                -- add a component for the current git branch if it exists and use no separator for the sections
                astronvim.status.component.git_branch { surround = { separator = "none" } },
                -- add a component for the current git diff if it exists and use no separator for the sections
                astronvim.status.component.git_diff { padding = { left = 1 },
                    surround = { separator = "none" } },
                -- fill the rest of the statusline
                -- the elements after this will appear in the middle of the statusline
                astronvim.status.component.fill(),
                -- add a component to display if the LSP is loading, disable showing running client names, and use no separator
                astronvim.status.component.lsp { lsp_client_names = false,
                    surround = { separator = "none", color = "bg" } },
                astronvim.status.component.builder {
                    { provider = " WAAK Labs" },

                    padding = { left = 1, right = 1 },
                    hl = { fg = "lsp_fg" }
                },
                {
                    astronvim.status.component.builder {
                        { provider = "|" },
                        padding = { left = 1, right = 1 },
                        hl = { fg = "lsp_fg" },
                    }
                },
                {
                    astronvim.status.component.builder {
                        { provider = require('pomodoro').statusline },
                        padding = { right = 1 },
                        hl = { fg = "lsp_fg" },
                        condition = function()
                            local pomodoro_status = require('pomodoro').statusline()
                            if pomodoro_status == nil or pomodoro_status:find("invalid") then
                                return false
                            end
                            return true
                        end,
                        update = { "CursorMoved", "CursorHold", "CursorHoldI" }
                    }
                },
                -- fill the rest of the statusline
                -- the elements after this will appear on the right of the statusline
                astronvim.status.component.fill(),
                -- add a component to display LSP clients, disable showing LSP progress, and use the right separator
                astronvim.status.component.lsp {
                    lsp_progress = false, padding = { left = 1, right = 1 },
                    hl = { fg = "lsp_fg" },
                    surround = { separator = "none" }
                },
                -- add a component for the current diagnostics if it exists and use the right separator for the section
                astronvim.status.component.diagnostics { surround = { separator = "none" },
                    padding = { left = 2, right = 2 } },
                -- NvChad has some nice icons to go along with information, so we can create a parent component to do this
                -- all of the children of this table will be treated together as a single component
                {
                    -- define a simple component where the provider is just a folder icon
                    astronvim.status.component.builder {
                        -- astronvim.get_icon gets the user interface icon for a closed folder with a space after it
                        { provider = astronvim.get_icon "FolderClosed" },
                        -- add padding after icon
                        padding = { left = 1, right = 1 },
                        -- set the foreground color to be used for the icon
                        hl = { fg = "white" },
                        -- use the right separator and define the background color
                        -- surround = { separator = "none", color = "folder_icon_bg" },
                    },
                    -- add a file information component and only show the current working directory name
                    astronvim.status.component.file_info {
                        -- we only want filename to be used and we can change the fname
                        -- function to get the current working directory name
                        filename = { fname = function(nr) return vim.fn.getcwd(nr) end,
                            padding = { left = 0, right = 1 } },
                        -- disable all other elements of the file_info component
                        file_icon = false,
                        file_modified = false,
                        file_read_only = false,
                        -- hl = {
                        --     bg = "comment_bg"
                        -- }
                        -- use no separator for this part but define a background color
                        -- surround = { separator = "none", color = "file_info_bg",
                        --     condition = false },
                    },
                },
                -- the final component of the NvChad statusline is the navigation section
                -- this is very similar to the previous current working directory section with the icon
                { -- make nav section with icon border
                    -- define a custom component with just a file icon
                    astronvim.status.component.builder {
                        { provider = astronvim.get_icon "ScrollText" },
                        -- add padding after icon
                        padding = { left = 1, right = 1 },
                        -- set the icon foreground
                        hl = function()
                            return {
                                fg = astronvim.status.hl.mode_bg(),
                            }
                        end,
                        -- use the right separator and define the background color
                        -- as well as the color to the left of the separator
                        -- surround = { separator = "right",
                        --     color = { main = "nav_icon_bg", left = "file_info_bg" } },
                    },
                    -- add a navigation component and just display the percentage of progress in the file
                    astronvim.status.component.nav {
                        -- add some padding for the percentage provider
                        -- percentage = { padding = { left = 0, right = 1 } },
                        ruler = { padding = { left = 0, right = 1 } },
                        padiding = { left = 1, right = 1, },
                        -- disable all other providers
                        -- ruler = false,
                        scrollbar = false,
                        -- define the foreground color
                        hl = function()
                            return {
                                fg = astronvim.status.hl.mode_bg(),
                            }
                        end,
                        -- use no separator and define the background color
                        -- surround = { separator = "none", color = "file_info_bg" },
                    },
                },
                -- {
                --     -- provider = function()
                --     --     local pomodoro = require('pomodoro')
                --     --     local status_provider = pomodoro.statusline()
                --     --     print(status_provider)
                --     --     -- if status_provider == nil or status_provider.find("invalid") then
                --     --     --     return ""
                --     --     -- end
                --     --
                --     --     return status_provider
                --     -- end,
                --     provider = require('pomodoro').statusline,
                --     update = { "CursorMoved", "CursorHold", "CursorHoldI" }
                -- }
                -- {
                --     astronvim.status.component.builder {
                --         { provider = require('pomodoro').statusline },
                --         padding = { right = 1 },
                --         -- h1 = { fg = "bg" },
                --         surround = {
                --             separator = "none", color = "file_info_bg"
                --         }
                --     }
                -- }

                -- astronvim.status.component.builder {
                --     { provider = " WAAK Labs" },
                --
                --     padding = { left = 1, right = 1 },
                --     hl = function()
                --         return {
                --             fg = "bg",
                --             bg = astronvim.status.hl.mode_bg()
                --         }
                --     end,
                -- },
            }

            -- a second element in the heirline setup would override the winbar
            -- by only providing a single element we will only override the statusline
            -- and use the default winbar in AstroNvim

            -- return the final confiuration table
            return config
        end,
    },

    -- LuaSnip Options
    luasnip = {
        -- Extend filetypes
        filetype_extend = {
            -- javascript = { "javascriptreact" },
        },
        -- Configure luasnip loaders (vscode, lua, and/or snipmate)
        vscode = {
            -- Add paths for including more VS Code style snippets in luasnip
            paths = {},
        },
    },

    -- CMP Source Priorities
    -- modify here the priorities of default cmp sources
    -- higher value == higher priority
    -- The value can also be set to a boolean for disabling default sources:
    -- false == disabled
    -- true == 1000
    cmp = {
        source_priority = {
            nvim_lsp = 1000,
            luasnip = 750,
            buffer = 500,
            path = 250,
        },
    },

    -- Modify which-key registration (Use this with mappings table in the above.)
    ["which-key"] = {
        -- Add bindings which show up as group name
        register = {
            -- first key is the mode, n == normal mode
            n = {
                -- second key is the prefix, <leader> prefixes
                ["<leader>"] = {
                    -- third key is the key to bring up next level and its displayed
                    -- group name in which-key top level menu
                    ["b"] = { name = "Buffer" },
                    ["z"] = { name = "ZenMode" },
                    ["?"] = { name = "Cheat.sh" },
                    ["x"] = { name = "Trouble" }

                },
            },
        },
    },

    -- This function is run last and is a good place to configuring
    -- augroups/autocommands and custom filetypes also this just pure lua so
    -- anything that doesn't fit in the normal config locations above can go here
    polish = function()
        return {
            polish = function()
                local function alpha_on_bye(cmd)
                    local bufs = vim.fn.getbufinfo { buflisted = true }
                    vim.cmd(cmd)
                    if require("core.utils").is_available "alpha-nvim" and not bufs[2] then
                        require("alpha").start(true)
                    end
                end

                vim.keymap.del("n", "<leader>c")
                if require("core.utils").is_available "bufdelete.nvim" then
                    vim.keymap.set("n", "<leader>c", function()
                        alpha_on_bye "Bdelete!"
                    end, { desc = "Close buffer" })
                else
                    vim.keymap.set("n", "<leader>c", function()
                        alpha_on_bye "bdelete!"
                    end, { desc = "Close buffer" })
                end

                -- vim.opt.fillchars = [[[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
                -- vim.opt.foldcolumn = "1"
                -- vim.opt.foldlevel = 99999
                -- vim.opt.foldlevelstart = -1
                -- vim.opt.foldenable = true

                vim.opt.fillchars      = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
                vim.opt.foldcolumn     = "0"
                vim.opt.foldlevel      = 99
                vim.opt.foldlevelstart = -1
                -- vim.opt.foldlevel = 20
                vim.opt.foldmethod     = "expr"
                vim.opt.foldexpr       = "nvim_treesitter#foldexpr()"
                vim.o.foldtext         = [[substitute(getline(v:foldstart),'\\\\t',repeat('\\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . '  ' . (v:foldend - v:foldstart + 1) . ' lines ']]


                -- local capabilities = vim.lsp.protocol.make_client_capabilities()
                -- capabilities.textDocument.completion.completionItem.snippetSupport = true
                -- capabilities.textDocument.foldingRange = {
                --     dynamicRegistration = false,
                --     lineFoldingOnly = true,
                -- }
                --
                -- local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
                -- for _, ls in ipairs(language_servers) do
                --     require('lspconfig')[ls].setup({
                --         capabilities = capabilities
                --         -- you can add other fields for setting up lsp server in this table
                --     })
                -- end

            end,
        }
        -- Set up custom filetypes
        -- vim.filetype.add {
        --   extension = {
        --     foo = "fooscript",
        --   },
        --   filename = {
        --     ["Foofile"] = "fooscript",
        --   },
        --   pattern = {
        --     ["~/%.config/foo/.*"] = "fooscript",
        --   },
        -- }
    end,
}



return config
