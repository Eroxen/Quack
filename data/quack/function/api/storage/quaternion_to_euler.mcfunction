#####################################################################
# api/storage/quaternion_to_euler.mcfunction
# written by Eroxen
#
# Converts a quaternion ([w, x, y, z]) 
# to an Euler angle ([yaw, pitch, roll]).
# Rotation order is yaw -> pitch -> roll.
#
# Storage input :
# - quack:api :
#   - quaternion: quaternion
#
# Storage output :
# - quack:api :
#   - euler: euler angle in degrees
#####################################################################

execute store result score quaternion.x quack run data get storage quack:api quaternion[0] 32768
execute store result score quaternion.y quack run data get storage quack:api quaternion[1] 32768
execute store result score quaternion.z quack run data get storage quack:api quaternion[2] 32768
execute store result score quaternion.w quack run data get storage quack:api quaternion[3] 32768

function quack:api/scoreboard/quaternion_to_euler

data modify storage quack:api euler set value [0f,0f,0f]
execute store result storage quack:api euler[0] float 0.0001 run scoreboard players get euler.yaw quack
execute store result storage quack:api euler[1] float 0.0001 run scoreboard players get euler.pitch quack
execute store result storage quack:api euler[2] float 0.0001 run scoreboard players get euler.roll quack