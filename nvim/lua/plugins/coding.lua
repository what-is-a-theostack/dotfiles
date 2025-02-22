UnDo
    {
      
%      unpack = unpack or table.unpack
>      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
q      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end5
      
      
:    opts.mapping = vim.tbl_extend("force", opts.mapping, {
0      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
x          -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
           cmp.select_next_item()
9        elseif vim.snippet.active({ direction = 1 }) then
!          vim.schedule(function()
            vim.snippet.jump(1)
          end)
&        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" }),
2      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
           cmp.select_prev_item()
:        elseif vim.snippet.active({ direction = -1 }) then
!          vim.schedule(function()
             vim.snippet.jump(-1)
          end)
        else
          fallback()
        end
      end, { "i", "s" }),
    })5
)      local has_words_before = function()
'        unpack = unpack or table.unpack
@        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
s        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end
       local cmp = require("cmp")
<      opts.mapping = vim.tbl_extend("force", opts.mapping, {
2        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
z            -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
"            cmp.select_next_item()
;          elseif vim.snippet.active({ direction = 1 }) then
#            vim.schedule(function()
!              vim.snippet.jump(1)
            end)
(          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
4        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
"            cmp.select_prev_item()
<          elseif vim.snippet.active({ direction = -1 }) then
#            vim.schedule(function()
"              vim.snippet.jump(-1)
            end)
          else
            fallback()
          end
        end, { "i", "s" }),
      })5
    end,5
        if cmp.vi
  "hrsh7th/nvim-cmp",
!  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
'    local has_words_before = function()
%      unpack = unpack or table.unpack
>      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
q      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end
    local cmp = require("cmp")
:    opts.mapping = vim.tbl_extend("force", opts.mapping, {
0      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
x          -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
           cmp.select_next_item()
9        elseif vim.snippet.active({ direction = 1 }) then
!          vim.schedule(function()
            vim.snippet.jump(1)
          end)
&        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" }),
2      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
           cmp.select_prev_item()
:        elseif vim.snippet.active({ direction = -1 }) then
!          vim.schedule(function()
             vim.snippet.jump(-1)
          end)
        else
          fallback()
        end
      end, { "i", "s" }),
    })
  end,
    "hrsh7th/nvim-cmp",
+    dependencies = { "hrsh7th/cmp-emoji" },
#    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
4      table.insert(opts.sources, { name = "emoji" })
    end,
  },5
    
    "opts"5
    
    if5
  {5
  }5
  },
    
    {
  "hrsh7th/nvim-cmp",
!  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
'    local has_words_before = function()
%      unpack = unpack or table.unpack
>      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
q      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end
    local cmp = require("cmp")
:    opts.mapping = vim.tbl_extend("force", opts.mapping, {
0      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
x          -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
           cmp.select_next_item()
9        elseif vim.snippet.active({ direction = 1 }) then
!          vim.schedule(function()
            vim.snippet.jump(1)
          end)
&        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" }),
2      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.vi
        if cmp.visible() then
           cmp.select_prev_item()
:        elseif vim.snippet.active({ direction = -1 }) then
!          vim.schedule(function()
             vim.snippet.jump(-1)
          end)
        else
          fallback()
        end
      end, { "i", "s" }),
    })
  end,
