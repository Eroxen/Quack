data modify storage quack:internal entity_position set value [0d,0d,0d]

execute store result storage quack:internal entity_position[0] double -0.00003051757812500000 run scoreboard players get #internal.temp.phi1 quack
execute store result storage quack:internal entity_position[2] double -0.00003051757812500000 run scoreboard players get #internal.temp.phi2 quack
data modify entity @s Pos set from storage quack:internal entity_position
execute at @s run tp @s ~ ~ ~ facing 0.0 0.0 0.0
execute store result score #internal.temp.phi quack run data get entity @s Rotation[0] -10000

execute store result storage quack:internal entity_position[0] double -0.00003051757812500000 run scoreboard players get #internal.temp.theta2 quack
execute store result storage quack:internal entity_position[2] double -0.00003051757812500000 run scoreboard players get #internal.temp.theta1 quack
data modify entity @s Pos set from storage quack:internal entity_position
execute at @s run tp @s ~ ~ ~ facing 0.0 0.0 0.0
execute store result score #internal.temp.theta quack run data get entity @s Rotation[0] 20000
scoreboard players add #internal.temp.theta quack 900000

execute store result storage quack:internal entity_position[0] double -0.00003051757812500000 run scoreboard players get #internal.temp.psi1 quack
execute store result storage quack:internal entity_position[2] double -0.00003051757812500000 run scoreboard players get #internal.temp.psi2 quack
data modify entity @s Pos set from storage quack:internal entity_position
execute at @s run tp @s ~ ~ ~ facing 0.0 0.0 0.0
execute store result score #internal.temp.psi quack run data get entity @s Rotation[0] 10000