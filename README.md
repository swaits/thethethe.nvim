# thethethe.nvim

This is a Neovim plugin to autocorrect common misspellings and typos. If you
type _teh_, neovim will automatically correct it to _the_.

It's based on [vim-autocorrect](https://github.com/panozzaj/vim-autocorrect),
but designed for Neovim and written in pure Lua. It also loads the dictionary
in the background, so it doesn't delay startup time.

## Installing

### [lazy](https://github.com/folke/lazy.nvim) (recommended)

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
opts = {
  -- Time (milliseconds) to wait before loading abbreviations
  delay_ms = 2000
}
```

## Future Directions

- Allow specifying custom dictionary files
- List custom dictionary entries directly in `opts {}`
- Split current (large!) dictionary into something like small, medium, large
- Recategorize current dictionary "English" and add options to include non-English dictionaries
