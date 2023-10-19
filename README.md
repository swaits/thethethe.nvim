# thethethe

This is an autocorrect plugin for common misspellings and typos. If you type 'teh', neovim will automatically correct it to 'the'.

It's based on [vim-autocorrect](https://github.com/panozzaj/vim-autocorrect), but designed for Neovim.

It defers loading the dictionary, so it doesn't delay startup time.

## Installing

### [lazy](https://github.com/folke/lazy.nvim)

```lua
{
  "https://git.sr.ht/~swaits/thethethe.nvim",
  opts = { },
}
```

### [packer](https://github.com/wbthomason/packer.nvim)

```lua
{
  "https://git.sr.ht/~swaits/thethethe.nvim",
  config = function()
    require("thethethe").setup()
  end
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'https://git.sr.ht/~swaits/thethethe.nvim'
lua require("thethethe").setup()
```

## Configuring

The default configuration options are listed below:

```lua
require("thethethe").setup({
  -- Time (milliseconds) to wait before loading abbreviations
  delay_ms = 2000
})
```
