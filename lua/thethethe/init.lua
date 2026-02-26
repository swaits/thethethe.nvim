local M = {}

--- loads abbreviations asynchronously in a coroutine context
---
--- A coroutine is used so that the large number of abbreviations can be
--- loaded without affecting editor responsiveness.
---
--- As we loop over the dictionary, each abbreviation is "scheduled" for creation.
--- The loop will not continue until the previously scheduled abbreviation is added.
--- @async
local function load_abbreviations_co()
  local this_co = coroutine.running()

  -- load our dictionary
  local dict = require("thethethe.dictionary")

  local opts = {}
  for key, value in pairs(dict) do
    -- perform this action some time later
    vim.schedule(function()
      vim.api.nvim_set_keymap("ia", key, value, opts)
      -- resume the coroutine, so we can add the next abbreviation
      coroutine.resume(this_co)
    end)

    -- halt the coroutine until the scheduled action above is complete,
    coroutine.yield()
  end
end

-- create our exported setup() function
function M.setup(opts)
  -- load our default configuration
  local config = require("thethethe.config")

  -- check for default overrides passed in
  if opts then
    config.delay_ms = opts.delay_ms or config.delay_ms
  end

  -- execute the function after config.delay_ms
  vim.defer_fn(function()
    local ok, result = pcall(coroutine.wrap(load_abbreviations_co))
    if ok == true then
      return
    end

    vim.notify("error while loading abbreviations: " .. result, vim.log.levels.ERROR)
  end, config.delay_ms)
end

return M
