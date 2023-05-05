require("mason").setup()
require("mason-lspconfig").setup({})

local import_luasnip, luasnip = pcall(require, 'luasnip')
if not import_luasnip then return end
local navic = require("nvim-navic")

navic.setup {
  icons = {
    File = ' ',
    Module = ' ',
    Namespace = ' ',
    Package = ' ',
    Class = ' ',
    Method = ' ',
    Property = ' ',
    Field = ' ',
    Constructor = ' ',
    Enum = ' ',
    Interface = ' ',
    Function = ' ',
    Variable = ' ',
    Constant = ' ',
    String = ' ',
    Number = ' ',
    Boolean = ' ',
    Array = ' ',
    Object = ' ',
    Key = ' ',
    Null = ' ',
    EnumMember = ' ',
    Struct = ' ',
    Event = ' ',
    Operator = ' ',
    TypeParameter = ' '
  },
  lsp = {
    auto_attach = false,
    preference = nil,
  },
  highlight = false,
  separator = " > ",
  depth_limit = 0,
  depth_limit_indicator = "..",
  safe_output = true,
  click = false
}


local on_attach = function(client, bufnr)
  navic.attach(client, bufnr)
  map('n', '<leader>rn', vim.lsp.buf.rename, opts)
  map('n', '<leader>ca', vim.lsp.buf.code_action, opts)

  map('n', 'gd', vim.lsp.buf.definition, opts)
  map('n', 'gi', vim.lsp.buf.implementation, opts)
  map('n', 'gr', require('telescope.builtin').lsp_references, opts)
  map('n', 'K', vim.lsp.buf.hover, opts)
  map('n', '<leader>F', vim.lsp.buf.format, opts)
end

local cmp = require 'cmp'

local icons = {
  Class = ' ',
  Constructor = ' ',
  Property = ' ',
  Method = ' ',
  Interface = ' ',
  Module = ' ',
  Text = ' ',
  Variable = ' ',
  Snippet = ' ',
  Field = ' ',
  Function = ' ',
  Keyword = ' ',
  Enum = ' ',
  File = ' ',
}


cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(_, vim_item)
      local kind = vim_item.kind

      vim_item.kind = (icons[kind] or " ")
      vim_item.menu = " (" .. kind .. ") "
      return vim_item
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
  }, {
    { name = 'buffer' },
    { name = 'path' },
  })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Set up lspconfig.
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- require("lspconfig").vuels.setup {
--   on_attach = on_attach,
--   capabilities = capabilities
-- }

-- require("lspconfig").vls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities
-- }

-- require("lspconfig").intelephense.setup {
--   on_attach = on_attach,
--   capabilities = capabilities
-- }

require("lspconfig").astro.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").svelte.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

local signs = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " "
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
