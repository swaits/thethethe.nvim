local M = {}

-- load our default configuration
local config = require("thethethe.config")

-- load abbreviations.dict
local function load_abbreviations()
  -- load our dictionary string
  local s = require("thethethe.dictionary")

  -- split dictionary by lines
  for line in s:gmatch("([^\n]*)\n?") do
    -- split each line by the colon
    local parts = {}
    for part in line:gmatch("[^:]+") do
      table.insert(parts, part)
    end

    if #parts == 2 and parts[1] and parts[2] then
      -- Add abbreviation via `iabbrev` (through vim.cmd)
      vim.cmd(string.format("iabbrev %s %s", parts[1], parts[2]))
    end
  end
end

-- create our exported setup() function
function M.setup(opts)
  -- check for default overrides passed in
  if opts then
    config.delay_ms = opts.delay_ms or config.delay_ms
  end

  -- execute the function after config.delay_ms
  vim.defer_fn(load_abbreviations, config.delay_ms)
end

return M
