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

if not g_sdk.game_event then
    print("Error: game_event not available")
    return
end

function print_field_info(field_info)
    print("=== Field Info Packet ===")
    print("Number of boosts: " .. field_info.num_boosts)
    print("Number of goals: " .. field_info.num_goals)
    
    print("\nBoost Pads:")
    for i, boost in ipairs(field_info.boost_pads) do
        print("  Boost " .. i .. ":")
        print("    Location: " .. dump(boost.location))
        print("    Is Full Boost: " .. tostring(boost.is_full_boost))
    end
    
    print("\nGoals:")
    for i, goal in ipairs(field_info.goals) do
        print("  Goal " .. i .. ":")
        print("    Team: " .. goal.team_num)
        print("    Location: " .. dump(goal.location))
        print("    Direction: " .. dump(goal.direction))
        print("    Width: " .. goal.width)
        print("    Height: " .. goal.height)
    end
    print("========================")
end

function print_game_tick_packet(packet)
    print("=== Game Tick Packet ===")
    
    -- Game Info
    print("Game Info:")
    print("  Seconds Elapsed: " .. packet.game_info.seconds_elapsed)
    print("  Game Time Remaining: " .. packet.game_info.game_time_remaining)
    print("  Is Overtime: " .. tostring(packet.game_info.is_overtime))
    print("  Is Unlimited Time: " .. tostring(packet.game_info.is_unlimited_time))
    print("  Is Round Active: " .. tostring(packet.game_info.is_round_active))
    print("  Is Kickoff Pause: " .. tostring(packet.game_info.is_kickoff_pause))
    print("  Is Match Ended: " .. tostring(packet.game_info.is_match_ended))
    print("  World Gravity Z: " .. packet.game_info.world_gravity_z)
    print("  Game Speed: " .. packet.game_info.game_speed)
    print("  Frame Number: " .. packet.game_info.frame_num)
    
    -- Ball Info
    print("\nBall Info:")
    print("  Physics:")
    print("    Location: " .. dump(packet.game_ball.physics.location))
    print("    Rotation: " .. dump(packet.game_ball.physics.rotation))
    print("    Velocity: " .. dump(packet.game_ball.physics.velocity))
    print("    Angular Velocity: " .. dump(packet.game_ball.physics.angular_velocity))
    
    if packet.game_ball.latest_touch then
        print("  Latest Touch:")
        print("    Name: " .. packet.game_ball.latest_touch.name)
        print("    Time: " .. packet.game_ball.latest_touch.time_seconds)
        print("    Hit Location: " .. dump(packet.game_ball.latest_touch.hit_location))
        print("    Hit Normal: " .. dump(packet.game_ball.latest_touch.hit_normal))
        print("    Team: " .. packet.game_ball.latest_touch.team)
        print("    Player Index: " .. packet.game_ball.latest_touch.player_index)
    end
    
    -- Players
    print("\nPlayers (" .. packet.num_cars .. "):")
    for i, player in ipairs(packet.game_cars) do
        print("  Player " .. i .. ": " .. player.name)
        print("    Team: " .. player.team)
        print("    Boost: " .. player.boost)
        print("    Physics:")
        print("      Location: " .. dump(player.physics.location))
        print("      Velocity: " .. dump(player.physics.velocity))
        print("    State:")
        print("      Is Demolished: " .. tostring(player.is_demolished))
        print("      Has Wheel Contact: " .. tostring(player.has_wheel_contact))
        print("      Is Super Sonic: " .. tostring(player.is_super_sonic))
        print("      Is Bot: " .. tostring(player.is_bot))
        print("      Jumped: " .. tostring(player.jumped))
        print("      Double Jumped: " .. tostring(player.double_jumped))
        print("    Score:")
        print("      Score: " .. player.score_info.score)
        print("      Goals: " .. player.score_info.goals)
        print("      Own Goals: " .. player.score_info.own_goals)
        print("      Assists: " .. player.score_info.assists)
        print("      Saves: " .. player.score_info.saves)
        print("      Shots: " .. player.score_info.shots)
        print("      Demolitions: " .. player.score_info.demolitions)
    end
    
    -- Boost Pads
    print("\nBoost Pads (" .. packet.num_boost .. "):")
    for i, boost in ipairs(packet.game_boosts) do
        print("  Boost " .. i .. ": Active=" .. tostring(boost.is_active) .. ", Timer=" .. boost.timer)
    end
    
    -- Teams
    print("\nTeams (" .. packet.num_teams .. "):")
    for i, team in ipairs(packet.teams) do
        print("  Team " .. i .. ": " .. team.team_name)
        print("    Size: " .. team.size)
        print("    Score: " .. team.score)
        print("    Team Index: " .. team.team_index)
        print("    Team Color: " .. dump(team.team_color))
    end
    
    -- Local Player Info
    print("\nLocal Player Info:")
    print("  Name: " .. packet.local_player_name)
    print("  Index: " .. packet.local_player_index)
    print("  Number of Local Players: " .. packet.num_local_players)
    
    if packet.local_player_indices and #packet.local_player_indices > 0 then
        print("  Local Player Indices: " .. table.concat(packet.local_player_indices, ", "))
    end
    
    if packet.local_player_names and #packet.local_player_names > 0 then
        print("  Local Player Names: " .. table.concat(packet.local_player_names, ", "))
    end
    
    -- DropShot Tiles (if available)
    if packet.dropshot_tiles and packet.num_tiles > 0 then
        print("\nDropShot Tiles (" .. packet.num_tiles .. "):")
        for i, tile in ipairs(packet.dropshot_tiles) do
            print("  Tile " .. i .. ": State=" .. tile.tile_state)
        end
    end
    
    print("========================")
end

print_field_info(sdk.field_packet)
print_game_tick_packet(sdk.game_packet)

