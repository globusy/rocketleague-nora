## main functions
* **[print(string)](#print)**
* **[printps(string)](#printps)**
* **[sleep(int ms)](#sleep)**
* **[run_thread(function)](#run_thread)**
* **[add_callback(string, string, function)](#add_callback)**
* **[remove_callback(string)](#remove_callback)**
* **[remove_callbacks()](#remove_callbacks)**

## struct functions
* **[local_player:send_input(table)](#send_input)**

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

### remove_callback
```lua
--[[
    Removes a specific registered callback by its identifier.
    
    This function deregisters a previously added callback, preventing it from
    receiving future events. Useful for dynamic callback management during
    state changes or cleanup.
    
    @param callback string - The unique identifier used when registering the callback
    @return boolean - True if callback was found and removed, false otherwise
    @throws Error if callback_id is not a string or is nil
    
    @example
    remove_callback("game_activation_handler")  -- Remove specific callback
]]
remove_callback("game_activation_handler")
```

### remove_callbacks
```lua
--[[
    Removes all registered callbacks and clears the callback registry.
    
    This function performs comprehensive cleanup by deregistering every
    active callback. Use cautiously as it affects all system components
    relying on callbacks.
    
    @return integer - Number of callbacks removed
    @example
    remove_callbacks()  -- Clean slate, no more callbacks active
]]
remove_callbacks()
```

### send_input
```lua
--[[
    send_input example for Rocket Simulator
    
    Parameters:
    b_jump (boolean) - Makes the player jump
    b_activate_boost (boolean) - Activates boost
    b_holding_boost (boolean) - Holds boost until released
    and more check game_structs
    Returns: None
]]

local local_player = g_sdk.game_event:get_local_players()[1] -- Get local player

-- Send jump with boost input
local_player:send_input({
    b_jump = true,            -- Trigger jump
    b_activate_boost = true,  -- Activate boost
    b_holding_boost = true    -- Hold boost continuously
})
```
