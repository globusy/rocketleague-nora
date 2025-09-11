# Hooks
- **[ON_KEY_PRESS](#ON_KEY_PRESS)**


## to see functions & classes
- **[Functions](extracted/functions.md)**
- **[Classes](extracted/classes.md)**

---

### ON_KEY_PRESS
```lua
remove_callbacks()

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

-- you can use event to get params from function
function func(event)
      print("event:", dump(event))

end

add_callback
(
"func", 
"Function TAGame.GameViewportClient_TA.HandleKeyPress",
 func
)
```
