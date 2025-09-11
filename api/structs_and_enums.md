## Structs

* **[vec2i](#vec2i)**
* **[vec2f](#vec2f)**
* **[vec3i](#vec3i)**
* **[vec3f](#vec3f)**
* **[vec4i](#vec4i)**
* **[vec4f](#vec4f)**
* **[FVehicleInputs](#FVehicleInputs)**
* **[Physics](#Physics)**
* **[Touch](#Touch)**
* **[BoxShape](#BoxShape)**
* **[SphereShape](#SphereShape)**
* **[CylinderShape](#CylinderShape)**
* **[CollisionShape](#CollisionShape)**
* **[PlayerInfo](#PlayerInfo)**
* **[DropShotInfo](#DropShotInfo)**
* **[BallInfo](#BallInfo)**
* **[BoostPadState](#BoostPadState)**
* **[TileInfo](#TileInfo)**
* **[TeamInfo](#TeamInfo)**
* **[GameInfo](#GameInfo)**
* **[BoostPad](#BoostPad)**
* **[GoalInfo](#GoalInfo)**
* **[FieldInfoPacket](#FieldInfoPacket)**
* **[GameTickPacket](#GameTickPacket)**
---

### vec2i
| Description | Name | Type |
|:------------|:----:|:-----|
| X-coordinate | **x** | int |
| Y-coordinate | **y** | int |

---

### vec2f
| Description | Name | Type |
|:------------|:----:|:-----|
| X-coordinate | **x** | float |
| Y-coordinate | **y** | float |

---

### vec3i
| Description | Name | Type |
|:------------|:----:|:-----|
| X-coordinate | **x** | int |
| Y-coordinate | **y** | int |
| Z-coordinate | **z** | int |

---

### vec3f
| Description | Name | Type |
|:------------|:----:|:-----|
| X-coordinate | **x** | float |
| Y-coordinate | **y** | float |
| Z-coordinate | **z** | float |

---

### vec4i
| Description | Name | Type |
|:------------|:----:|:-----|
| X-coordinate | **x** | int |
| Y-coordinate | **y** | int |
| Z-coordinate | **z** | int |
| W-coordinate | **w** | int |

---

### vec4f
| Description | Name | Type |
|:------------|:----:|:-----|
| X-coordinate | **x** | float |
| Y-coordinate | **y** | float |
| Z-coordinate | **z** | float |
| W-coordinate | **w** | float |

---

### FVehicleInputs
| Description | Name | Type |
|:------------|:----:|:-----|
| throttle | **throttle** | float |
| steer | **steer** | float |
| pitch | **pitch** | float |
| yaw | **yaw** | float |
| roll | **roll** | float |
| dodge_forward | **dodge_forward** | float |
| dodge_right | **dodge_right** | float |
| b_handbrake | **b_handbrake** | bool |
| b_jump | **b_jump** | bool |
| b_activate_boost | **b_activate_boost** | bool |
| b_holding_boost | **b_holding_boost** | bool |
| b_jumped | **b_jumped** | bool |
| b_grab | **b_grab** | bool |
| b_button_mash | **b_button_mash** | bool |
| b_target_find | **b_target_find** | bool |

---

### Physics
| Description | Name | Type |
|:------------|:----:|:-----|
| location | **location** | [vec3f](#vec3f) |
| rotation | **rotation** | [vec3f](#vec3f) |
| velocity | **velocity** | [vec3f](#vec3f) |
| angular_velocity | **angular_velocity** | [vec3f](#vec3f) |

---

### Touch
| Description | Name | Type |
|:------------|:----:|:-----|
| name | **name** | string |
| time_seconds | **time_seconds** | float |
| hit_location | **hit_location** | [vec3f](#vec3f) |
| hit_normal | **hit_normal** | [vec3f](#vec3f) |
| team | **team** | int |
| player_index | **player_index** | int |

---

### BoxShape
| Description | Name | Type |
|:------------|:----:|:-----|
| length | **length** | float |
| width | **width** | float |
| height | **height** | float |

---

### SphereShape
| Description | Name | Type |
|:------------|:----:|:-----|
| diameter | **diameter** | float |

---

### CylinderShape
| Description | Name | Type |
|:------------|:----:|:-----|
| diameter | **diameter** | float |
| height | **height** | float |

---

### CollisionShape
| Description | Name | Type |
|:------------|:----:|:-----|
| type | **type** | [ShapeType](#ShapeType) |
| box | **box** | [BoxShape](#BoxShape) |
| sphere | **sphere** | [SphereShape](#SphereShape) |
| cylinder | **cylinder** | [CylinderShape](#CylinderShape) |

---

### PlayerInfo
| Description | Name | Type |
|:------------|:----:|:-----|
| physics | **physics** | [#Physics](#Physics) |
| score_info | **score_info** | [#ScoreInfo](#ScoreInfo) |
| is_demolished | **is_demolished** | bool |
| has_wheel_contact | **has_wheel_contact** | bool |
| is_super_sonic | **is_super_sonic** | bool |
| is_bot | **is_bot** | bool |
| jumped | **jumped** | bool |
| double_jumped | **double_jumped** | bool |
| name | **name** | string |
| team | **team** | int |
| boost | **boost** | int |
| hitbox | **hitbox** | [BoxShape](#BoxShape) |
| hitbox_offset | **hitbox_offset** | [vec3f](#vec3f) |
| spawn_id | **spawn_id** | int |
| PRI | **PRI** | [APRI_TA](#APRI_TA) |

---

### DropShotInfo
| Description | Name | Type |
|:------------|:----:|:-----|
| absorbed_force | **absorbed_force** | float |
| damage_index | **damage_index** | int |
| force_accum_recent | **force_accum_recent** | float |

---

### BallInfo
| Description | Name | Type |
|:------------|:----:|:-----|
| physics | **physics** | [#Physics](#Physics) |
| latest_touch | **latest_touch** | [#Touch](#Touch) |
| drop_shot_info | **drop_shot_info** | [#DropShotInfo](#DropShotInfo) |
| collision_shape | **collision_shape** | [#CollisionShape](#CollisionShape) |

---

### BoostPadState
| Description | Name | Type |
|:------------|:----:|:-----|
| is_active | **is_active** | bool |
| timer | **timer** | float |

---

### TileInfo
| Description | Name | Type |
|:------------|:----:|:-----|
| tile_state | **tile_state** | int |

---

### TeamInfo
| Description | Name | Type |
|:------------|:----:|:-----|
| team_name | **team_name** | string |
| size | **size** | int |
| score | **score** | int |
| team_index | **team_index** | int |
| team_color | **team_color** | [vec4i](#vec4i) |

---

### GameInfo
| Description | Name | Type |
|:------------|:----:|:-----|
| seconds_elapsed | **seconds_elapsed** | float |
| game_time_remaining | **game_time_remaining** | float |
| is_overtime | **is_overtime** | bool |
| is_unlimited_time | **is_unlimited_time** | bool |
| is_round_active | **is_round_active** | bool |
| is_kickoff_pause | **is_kickoff_pause** | bool |
| is_match_ended | **is_match_ended** | bool |
| world_gravity_z | **world_gravity_z** | float |
| game_speed | **game_speed** | float |
| frame_num | **frame_num** | int |

---

### BoostPad
| Description | Name | Type |
|:------------|:----:|:-----|
| location | **location** | [vec3f](#vec3f) |
| is_full_boost | **is_full_boost** | bool |

---

### GoalInfo
| Description | Name | Type |
|:------------|:----:|:-----|
| team_num | **team_num** | int |
| location | **location** | [vec3f](#vec3f) |
| direction | **direction** | [vec3f](#vec3f) |
| width | **width** | float |
| height | **height** | float |

---

### FieldInfoPacket
| Description | Name | Type |
|:------------|:----:|:-----|
| boost_pads | **boost_pads** | vector<[#BoostPad](#BoostPad)> |
| num_boosts | **num_boosts** | int |
| goals | **goals** | vector<[#GoalInfo](#GoalInfo)> |
| num_goals | **num_goals** | int |

---

### GameTickPacket
| Description | Name | Type |
|:------------|:----:|:-----|
| game_cars | **game_cars** | vector<[#PlayerInfo](#PlayerInfo)> |
| num_cars | **num_cars** | int |
| game_boosts | **game_boosts** | vector<[#BoostPadState](#BoostPadState)> |
| num_boost | **num_boost** | int |
| game_ball | **game_ball** | [#BallInfo](#BallInfo) |
| game_info | **game_info** | [#GameInfo](#GameInfo) |
| dropshot_tiles | **dropshot_tiles** | vector<[#TileInfo](#TileInfo)> |
| num_tiles | **num_tiles** | int |
| teams | **teams** | vector<[#TeamInfo](#TeamInfo)> |
| num_teams | **num_teams** | int |
| local_player_name | **local_player_name** | string |
| local_player_index | **local_player_index** | int |
| local_player_indices | **local_player_indices** | vector<int> |
| local_player_names | **local_player_names** | vector<string> |
| num_local_players | **num_local_players** | int |

---
