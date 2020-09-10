local hyper = {"cmd", "alt"}

local mapKeyAndCommand = {
  ["a"] = "atom",
  ["i"] = "intellij",
  ["o"] = "outlook",
  ["m"] = "browser https://messages.google.com/web/conversations",
  ["s"] = "slack",
  ["t"] = "iterm",
  ["p"] = "spotify",
  ["l"] = "lock.machine",
  ["z"] = "move-photos.sh"
}

for hotKey, program in pairs(mapKeyAndCommand) do
  hs.hotkey.bind(hyper, hotKey, function()
    hs.execute(program, true)
  end)
end


hs.notify.new({title="Hammerspoon Loaded", informativeText=""}):send()
