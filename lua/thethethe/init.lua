local M = {}

function M.setup(opts)
  opts = opts or {}
  vim.defer_fn(function()
    for line in require("thethethe.dictionary"):gmatch("[^\n]+") do
      local typo, fix = line:match("^([^:]+):(.+)$")
      if typo and fix then
        vim.cmd.iabbrev(typo, fix)
      end
    end
  end, opts.delay_ms or 2000)
end

return M
