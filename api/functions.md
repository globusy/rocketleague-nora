## functions
* **[print(string)](#print)**
* **[printps(string)](#printps)**
* **[sleep(int ms)](#sleep)**
* **[run_thread(function)](#run_thread)**
* **[add_callback(string, string, function)](#add_callback)**

### print
```lua
-- prints to console
print("Hello Nora!")
```

### printps
```lua
-- prints colorful to console
printps("`cHello`` `@Nora```4!``")
```

### sleep
```lua
sleep(1337) -- sleeps 1337 milliseconds
```

### run_thread
```lua
-- Control flag for the thread loop
local loop = true

-- Thread function that runs in a separate execution context
-- This function will continuously print "hi" while the loop flag is true
function test_thread()
    while loop do
        print("hi")
        sleep(10) -- Added small delay to prevent CPU overutilization
    end
    print("Thread exiting gracefully")
end

-- Start the thread in the background
-- run_thread executes the function concurrently without blocking main execution
run_thread(test_thread)

print("Main thread continues execution immediately")

-- Main thread sleeps for 2 seconds while background thread runs
sleep(2000)

print("Stopping loop - Signaling thread to terminate")
loop = false  -- Set flag to stop the thread loop

-- Optional: Wait for thread to finish (good practice for cleanup)
sleep(10)  -- Brief wait to ensure thread detects the flag change

print("Main thread completed")
```

### add_callback
```lua
--[[
    Recursively serializes a Lua object into a human-readable string representation.
    Handles nested tables, string keys, and various data types.
    
    @param o any - The object to serialize (table, string, number, boolean, etc.)
    @return string - Formatted string representation of the object
]]
function dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            -- Quote non-numeric keys for proper representation
            if type(k) ~= 'number' then 
                k = '"' .. tostring(k) .. '"' 
            end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ', '
        end
        -- Remove trailing comma and space if table had entries
        if next(o) ~= nil then
            s = s:sub(1, -3) -- Remove last ", "
        end
        return s .. ' }'
    else
        -- Handle nil values explicitly for clarity
        if o == nil then
            return 'nil'
        end
        -- Quote strings for better readability
        if type(o) == 'string' then
            return '"' .. tostring(o) .. '"'
        end
        return tostring(o)
    end
end

--[[
    Callback handler for game state transition events.
    Logs event details when the soccer game becomes active.
    
    @param event table - Event data containing game state information
    @return nil|boolean - Return true to block original function, nil/false to proceed
]]
function handle_game_activate(event)
    print("Game activation event received:", dump(event))
    
    -- Add game logic here based on event data
    -- return true -- Uncomment to block original BeginState execution
end

-- Register callback for game state transition events
add_callback(
    "game_activation_handler",          -- Unique callback identifier for removal
    "Function TAGame.GameEvent_Soccar_TA.Active.BeginState", -- Native function to hook
    handle_game_activate                -- Callback function to execute
)

-- Example: How to remove this callback later ( you can use this in another lua script too )
-- remove_callback("game_activation_handler")
```
