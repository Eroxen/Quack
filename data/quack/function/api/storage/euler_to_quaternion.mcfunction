#####################################################################
# api/euler_to_quaternion.mcfunction
# written by Eroxen
#
# Converts an Euler angle ([yaw, pitch, roll])
# to a quaternion ([w, x, y, z])
#
# Storage input :
# - quack:api :
#   - euler: euler angle in degrees
#
# Storage output :
# - quack:api :
#   - quaternion: quaternion
#####################################################################

execute store result score euler.yaw quack run data get storage quack:api euler[0] 10000
execute store result score euler.pitch quack run data get storage quack:api euler[1] 10000
execute store result score euler.roll quack run data get storage quack:api euler[2] 10000

function quack:api/scoreboard/euler_to_quaternion

data modify storage quack:api quaternion set value [0f,0f,0f,0f]
execute store result storage quack:api quaternion[0] float 0.00003051757812500000 run scoreboard players get quaternion.x quack
execute store result storage quack:api quaternion[1] float 0.00003051757812500000 run scoreboard players get quaternion.y quack
execute store result storage quack:api quaternion[2] float 0.00003051757812500000 run scoreboard players get quaternion.z quack
execute store result storage quack:api quaternion[3] float 0.00003051757812500000 run scoreboard players get quaternion.w quack