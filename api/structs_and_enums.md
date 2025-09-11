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
