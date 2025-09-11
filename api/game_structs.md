## Game Structs

* **[UObject](#UObject)**
* **[AActor](#AActor)**
* **[APawn](#APawn)**
* **[ATeamInfo](#ATeamInfo)**
* **[ATeam_TA](#ATeam_TA)**
* **[APRI](#APRI)**
* **[APRI_TA](#APRI_TA)**
* **[ACamera](#ACamera)**
* **[AController](#AController)**
* **[APlayerController](#APlayerController)**
* **[APlayerController_TA](#APlayerController_TA)**
* **[AVehicle_TA](#AVehicle_TA)**
* **[ACar_TA](#ACar_TA)**
* **[ABall_TA](#ABall_TA)**
* **[UGoal_TA](#UGoal_TA)**
* **[AGameEvent](#AGameEvent)**

---

### UObject
| Description | Name | Type |
|:------------|:----:|:-----|
| Get the object's name | **get_name** | function(): string |
| Get the object's full name | **get_full_name** | function(): string |
| Get the object's C++ name | **get_name_cpp** | function(): string |

---

### AActor
| Description | Name | Type |
|:------------|:----:|:-----|
| Get actor location | **get_location** | function(): [vec3f](app_structs.md#vec3f) |
| Get actor rotation | **get_rotation** | function(): [vec3f](app_structs.md#vec3f) |
| Get actor velocity | **get_velocity** | function(): [vec3f](app_structs.md#vec3f) |
| Get actor acceleration | **get_acceleration** | function(): [vec3f](app_structs.md#vec3f) |
| Get actor angular velocity | **get_angular_velocity** | function(): [vec3f](app_structs.md#vec3f) |

---

### APawn
| Description | Name | Type |
|:------------|:----:|:-----|
| Get player replication info | **get_apri** | function(): [APRI_TA](#APRI_TA) |

---

### ATeamInfo
| Description | Name | Type |
|:------------|:----:|:-----|
| Get team name | **get_team_name** | function(): string |
| Get team size | **get_size** | function(): int |
| Get team score | **get_score** | function(): int |
| Get team index | **get_team_index** | function(): int |
| Get team color | **get_team_color** | function(): [vec4i](app_structs.md#vec4i) |

---

### ATeam_TA
| Description | Name | Type |
|:------------|:----:|:-----|
| Get team members | **get_members** | function(): TArray<[APRI_TA](#APRI_TA)> |

---

### APRI
| Description | Name | Type |
|:------------|:----:|:-----|
| Get player score | **get_score** | function(): int |
| Get player deaths | **get_deaths** | function(): int |
| Get player ping | **get_ping** | function(): int |
| Get number of lives | **get_num_lives** | function(): int |
| Get player name | **get_player_name** | function(): string |
| Get old player name | **get_old_name** | function(): string |
| Get player ID | **get_player_id** | function(): int |
| Get team info | **get_team_info** | function(): [ATeamInfo](#ATeamInfo) |
| Get bitfield | **get_bitfield** | function(): int |
| Check if admin | **is_admin** | function(): bool |
| Check if spectator | **is_spectator** | function(): bool |
| Check if only spectator | **is_only_spectator** | function(): bool |
| Check if waiting player | **is_waiting_player** | function(): bool |
| Check if ready to play | **is_ready_to_play** | function(): bool |
| Check if out of lives | **is_out_of_lives** | function(): bool |
| Check if bot | **is_bot** | function(): bool |
| Check if inactive | **is_inactive** | function(): bool |
| Check if from previous level | **is_from_previous_level** | function(): bool |
| Check if timed out | **is_timed_out** | function(): bool |
| Check if unregistered | **is_unregistered** | function(): bool |
| Get unique network ID | **get_unique_id** | function(): FUniqueNetId |

---

### APRI_TA
| Description | Name | Type |
|:------------|:----:|:-----|
| Get match score | **get_match_score** | function(): int |
| Get match goals | **get_match_goals** | function(): int |
| Get match own goals | **get_match_own_goals** | function(): int |
| Get match assists | **get_match_assists** | function(): int |
| Get match saves | **get_match_saves** | function(): int |
| Get match shots | **get_match_shots** | function(): int |
| Get match demolishes | **get_match_demolishes** | function(): int |
| Get match bonus XP | **get_match_bonus_xp** | function(): int |
| Get match breakout damage | **get_match_breakout_damage** | function(): int |
| Get game event | **get_game_event** | function(): AGameEvent |
| Get replicated game event | **get_replicated_game_event** | function(): [AGameEvent](#AGameEvent) |
| Get car | **get_car** | function(): [ACar_TA](#ACar_TA) |

---

### ACamera
| Description | Name | Type |
|:------------|:----:|:-----|
| Get field of view | **get_fov** | function(): float |

---

### AController
| Description | Name | Type |
|:------------|:----:|:-----|
| Get pawn | **get_pawn** | function(): APawn |
| Get APRI | **get_apri** | function(): [APRI](#APRI) |
| Get player number | **get_player_num** | function(): int |

---

### APlayerController
| Description | Name | Type |
|:------------|:----:|:-----|
| Get player camera | **get_player_camera** | function(): [ACamera](#ACamera) |

---

### APlayerController_TA
| Description | Name | Type |
|:------------|:----:|:-----|
| Get car | **get_car** | function(): [ACar_TA](#ACar_TA) |
| Get APRI_TA | **get_apri** | function(): [APRI_TA](#APRI_TA) |
| Get vehicle input | **get_vehicle_input** | function(): FVehicleInputs |
| Set vehicle input | **set_vehicle_input** | function(FVehicleInputs): void |

---

### AVehicle_TA
| Description | Name | Type |
|:------------|:----:|:-----|
| Get vehicle simulation | **get_vehicle_sim** | function(): uintptr_t |
| Get bitfield | **get_bitfield** | function(): int |
| Get input | **get_input** | function(): FVehicleInputs |
| Get APRI_TA | **get_apri** | function(): [APRI_TA](#APRI_TA) |
| Get local collision offset | **get_local_collision_offset** | function(): [vec3f](app_structs.md#vec3f) |
| Get local collision extent | **get_local_collision_extent** | function(): [vec3f](app_structs.md#vec3f) |
| Get boost component | **get_boost_component** | function(): ACarComponent_Boost_TA |
| Check if driving | **is_driving** | function(): bool |
| Check if replicated handbrake | **is_replicated_handbrake** | function(): bool |
| Check if jumped | **has_jumped** | function(): bool |
| Check if double jumped | **has_double_jumped** | function(): bool |
| Check if on ground | **is_on_ground** | function(): bool |
| Check if super sonic | **is_super_sonic** | function(): bool |
| Check if podium mode | **is_podium_mode** | function(): bool |
| Check if has post match celebration | **has_post_match_celebration** | function(): bool |

---

### ACar_TA
| Description | Name | Type |
|:------------|:----:|:-----|
| Get attacker PRI | **get_attacker_pri** | function(): [APRI_TA](#APRI_TA) |

---

### ABall_TA
| Description | Name | Type |
|:------------|:----:|:-----|
| *Inherits from APawn* |  |  |

---

### UGoal_TA
| Description | Name | Type |
|:------------|:----:|:-----|
| Get team number | **get_team_num** | function(): int |
| Get location | **get_location** | function(): [vec3f](app_structs.md#vec3f) |
| Get direction | **get_direction** | function(): [vec3f](app_structs.md#vec3f) |
| Get right vector | **get_right** | function(): [vec3f](app_structs.md#vec3f) |
| Get up vector | **get_up** | function(): [vec3f](app_structs.md#vec3f) |
| Get rotation | **get_rotation** | function(): [vec3f](app_structs.md#vec3f) |
| Get local extent | **get_local_extent** | function(): [vec3f](app_structs.md#vec3f) |
| Get world center | **get_world_center** | function(): [vec3f](app_structs.md#vec3f) |
| Get world extent | **get_world_extent** | function(): [vec3f](app_structs.md#vec3f) |
| Get world front center | **get_world_front_center** | function(): [vec3f](app_structs.md#vec3f) |
| Get world box | **get_world_box** | function(): FBox |

---

### AGameEvent
| Description | Name | Type |
|:------------|:----:|:-----|
| Get countdown time | **get_countdown_time** | function(): int |
| Get players | **get_players** | function(): TArray<[AController](#AController)> |
| Get PRIs | **get_pris** | function(): TArray<[APRI_TA](#APRI_TA)> |
| Get cars | **get_cars** | function(): TArray<[ACar_TA](#ACar_TA)> |
| Get local players | **get_local_players** | function(): TArray<[APlayerController_TA](#APlayerController_TA)> |
| Get game owner | **get_game_owner** | function(): [APRI](#APRI) |
| Get teams | **get_teams** | function(): TArray<[ATeam_TA](#ATeam_TA)> |
| Get soccer bitfield | **get_soccer_bitfield** | function(): int |
| Check if round active | **is_round_active** | function(): bool |
| Check if play replays | **is_play_replays** | function(): bool |
| Check if ball has been hit | **is_ball_has_been_hit** | function(): bool |
| Check if overtime | **is_overtime** | function(): bool |
| Check if unlimited time | **is_unlimited_time** | function(): bool |
| Check if no contest | **is_no_contest** | function(): bool |
| Check if disable goal delay | **is_disable_goal_delay** | function(): bool |
| Check if show no scorer goal message | **is_show_no_scorer_goal_message** | function(): bool |
| Check if match ended | **is_match_ended** | function(): bool |
| Check if show intro scene | **is_show_intro_scene** | function(): bool |
| Check if club match | **is_club_match** | function(): bool |
| Check if can drop online rewards | **is_can_drop_online_rewards** | function(): bool |
| Check if allow honor duels | **is_allow_honor_duels** | function(): bool |
| Get game time | **get_game_time** | function(): int |
| Get warmup time | **get_warmup_time** | function(): int |
| Get max score | **get_max_score** | function(): int |
| Get game time remaining | **get_game_time_remaining** | function(): float |
| Get seconds remaining | **get_seconds_remaining** | function(): int |
| Get wait time remaining | **get_wait_time_remaining** | function(): int |
| Get total game time played | **get_total_game_time_played** | function(): float |
| Get overtime time played | **get_overtime_time_played** | function(): float |
| Get game balls | **get_game_balls** | function(): TArray<[ABall_TA](#ABall_TA)> |
| Get total game balls | **get_total_game_balls** | function(): int |
| Get goals | **get_goals** | function(): TArray<[UGoal_TA](#UGoal_TA)> |
| Get game winner | **get_game_winner** | function(): [ATeam_TA](#ATeam_TA) |
| Get match winner | **get_match_winner** | function(): [ATeam_TA](#ATeam_TA) |
| Get MVP | **get_mvp** | function(): [APRI_TA](#APRI_TA) |
| Get fastest goal player | **get_fastest_goal_player** | function(): [APRI_TA](#APRI_TA) |
| Get slowest goal player | **get_slowest_goal_player** | function(): [APRI_TA](#APRI_TA) |
| Get furthest goal player | **get_furthest_goal_player** | function(): [APRI_TA](#APRI_TA) |
| Get fastest goal speed | **get_fastest_goal_speed** | function(): float |
| Get slowest goal speed | **get_slowest_goal_speed** | function(): float |
| Get furthest goal | **get_furthest_goal** | function(): float |
| Get scoring player | **get_scoring_player** | function(): [APRI_TA](#APRI_TA) |
| Get round number | **get_round_num** | function(): int |

---
