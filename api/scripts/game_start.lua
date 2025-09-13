--[[
    Callback Management System
    Handles game event callbacks with proper cleanup and debugging
]]

-- Clean up existing callback to prevent duplicates
remove_callback("game_state_callback")

--[[
    Recursively serializes a Lua object to string for debugging
    @param o: any - Object to dump
    @param indent: string (optional) - Indentation string for nested structures
    @return: string - Formatted string representation
]]
local function dump_object(o, indent)
    indent = indent or ""
    if type(o) == "table" then
        local s = "{\n"
        local new_indent = indent .. "  "
        for k, v in pairs(o) do
            local key_str = type(k) == "number" and tostring(k) or '"' .. tostring(k) .. '"'
            s = s .. new_indent .. "[" .. key_str .. "] = " .. dump_object(v, new_indent) .. ",\n"
        end
        return s .. indent .. "}"
    else
        return tostring(o)
    end
end

--[[
    Game state event handler
    @param event: table - Game event data
]]
local function on_game_state_begin(event)
    print("[Game State] Event received:") -- triggers when game is active (comes once)
    print(dump_object(event))
end

-- Register callback for game active state
add_callback(
    "game_state_callback",
    "Function TAGame.GameEvent_Soccar_TA.Active.BeginState",
    on_game_state_begin
)

print("Game state callback registered successfully")
