local hyper = {"cmd", "alt"}

local mapKeyAndProgram = {
  ["a"] = "atom",
  ["i"] = "intellij",
  ["o"] = "outlook",
  ["s"] = "slack",
  ["t"] = "iterm",
}

for hotKey, program in pairs(mapKeyAndProgram) do
  hs.hotkey.bind(hyper, hotKey, function()
    hs.execute(program, true)
  end)
end


hs.notify.new({title="Hammerspoon Loaded", informativeText=""}):send()
