return {
    'L3MON4D3/LuaSnip',
    config = function()
        local luasnip = require 'luasnip'
        
        -- Configuração básica
        luasnip.config.set_config {
            history = true,
            update_events = 'TextChanged,TextChangedI',
        }
        
        -- Carrega snippets amigáveis (inclui React/JS/TS)
        require('luasnip.loaders.from_vscode').lazy_load()
        
        -- Mapeamentos (você deve usar <C-k> e <C-j> no seu cmp.lua)
        vim.keymap.set({ 'i', 's' }, '<C-k>', function() luasnip.expand_or_jump() end, { silent = true })
        vim.keymap.set({ 'i', 's' }, '<C-j>', function() luasnip.jump(-1) end, { silent = true })
    end,
}