data modify storage quack:internal entity_rotation set value [0f,0f]

execute store result storage quack:internal entity_rotation[0] float 0.00005 run scoreboard players get euler.yaw quack
data modify entity @s Rotation set from storage quack:internal entity_rotation
execute positioned 0.0 0.0 0.0 rotated as @s run tp @s ^ ^ ^1
data modify storage quack:internal entity_position set from entity @s Pos
execute store result score #internal.euler.cos_yaw quack run data get storage quack:internal entity_position[2] 32768
execute store result score #internal.euler.sin_yaw quack run data get storage quack:internal entity_position[0] -32768

execute store result storage quack:internal entity_rotation[0] float 0.00005 run scoreboard players get euler.pitch quack
data modify entity @s Rotation set from storage quack:internal entity_rotation
execute positioned 0.0 0.0 0.0 rotated as @s run tp @s ^ ^ ^1
data modify storage quack:internal entity_position set from entity @s Pos
execute store result score #internal.euler.cos_pitch quack run data get storage quack:internal entity_position[2] 32768
execute store result score #internal.euler.sin_pitch quack run data get storage quack:internal entity_position[0] -32768

tp @s ~ ~ ~