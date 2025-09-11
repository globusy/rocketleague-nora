# Hooks
- **[ON_KEY_PRESS](#ON_KEY_PRESS)**


## to see functions & classes
- **[Functions](extracted/functions.md)**
- **[Classes](extracted/classes.md)**

---

### ON_KEY_PRESS
```lua
-- Removes all registered callbacks to prevent duplicate event handling
remove_callbacks()

-- Recursively converts a Lua object (especially tables) to a readable string representation
-- @param o any The object to dump
-- @return string A string representation of the object
function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

-- Callback function to handle key press events
-- @param event table The event data containing key press information
-- @return boolean Returns true to block the event from further processing, false to allow it
function handle_key_press(event)
      print("Key press event received:", dump(event))
      return true -- Returning true blocks the event from proceeding to the game
end

-- Register the callback function to handle key press events in the game viewport
add_callback(
    "handle_key_press", -- Unique identifier for this callback
    "Function TAGame.GameViewportClient_TA.HandleKeyPress", -- The game function to hook into
    handle_key_press -- The callback function to execute
)
```
