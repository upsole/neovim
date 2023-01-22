vim.opt.completeopt = {"menuone", "noselect"}
local cmp = require('cmp')
local luasnip = require('luasnip')

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local select_opts = {}
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  sources = {
	{name = 'path'},
	{ name = "luasnip"},
	{name = 'nvim_lsp', keyword_length = 2},
	{name = 'buffer', keyword_length = 2},
  },
  window = {
	documentation = cmp.config.window.bordered()
  },
  formatting = {
	fields = {'menu', 'abbr'},
	 format = function(entry, item)
		local menu_icon = {
		  nvim_lsp = 'λ',
		  buffer = 'β',
		  path = '~',
		}
	  item.menu = menu_icon[entry.source.name]
	  return item
	end,
  },
  mapping = {
    ["<C-n>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif check_backspace() then
        fallback()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
	['<C-p>'] = cmp.mapping(function(fallback)
	  if cmp.visible() then
		cmp.select_prev_item(select_opts)
	  else
		fallback()
	  end
	end, {'i', 's'}),
	['<CR>'] = cmp.mapping.confirm({select = true}),
  },
  select_opts = {
	behavior = cmp.SelectBehavior.Select
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = true,
  },
})
