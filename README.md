# thethethe.nvim

This is a Neovim plugin to autocorrect common misspellings and typos. If you
type _teh_, neovim will automatically correct it to _the_.

It's based on [vim-autocorrect](https://github.com/panozzaj/vim-autocorrect),
but designed for Neovim and written in pure Lua. It also loads the dictionary
in the background, so it doesn't delay startup time.

## Demo

[![asciicast](https://asciinema.org/a/WtUg846Z7wNiMrzPgjod1picV.svg)](https://asciinema.org/a/WtUg846Z7wNiMrzPgjod1picV)

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

## MIT License

Copyright © 2023 Stephen Waits <steve@waits.net>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
