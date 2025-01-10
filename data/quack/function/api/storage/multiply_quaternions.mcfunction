#####################################################################
# api/multiply_quaternions_storage.mcfunction
# written by Eroxen
#
# Multiplies two quaternions stored in data storage together.
#
# Storage input :
# - quack:api :
#   - quaternions:
#     - a: quaternion
#     - b: quaternion
#
# Storage output :
# - quack:api :
#   - quaternions:
#     - out: quaternion
#####################################################################

execute store result score quaternion.a.x quack run data get storage quack:api quaternions.a[0] 32768
execute store result score quaternion.a.y quack run data get storage quack:api quaternions.a[1] 32768
execute store result score quaternion.a.z quack run data get storage quack:api quaternions.a[2] 32768
execute store result score quaternion.a.w quack run data get storage quack:api quaternions.a[3] 32768

execute store result score quaternion.b.x quack run data get storage quack:api quaternions.b[0] 32768
execute store result score quaternion.b.y quack run data get storage quack:api quaternions.b[1] 32768
execute store result score quaternion.b.z quack run data get storage quack:api quaternions.b[2] 32768
execute store result score quaternion.b.w quack run data get storage quack:api quaternions.b[3] 32768

function quack:api/scoreboard/multiply_quaternions

data modify storage quack:api quaternions.out set value [0f,0f,0f,0f]
execute store result storage quack:api quaternions.out[0] float 0.00003051757812500000 run scoreboard players get quaternion.out.x quack
execute store result storage quack:api quaternions.out[1] float 0.00003051757812500000 run scoreboard players get quaternion.out.y quack
execute store result storage quack:api quaternions.out[2] float 0.00003051757812500000 run scoreboard players get quaternion.out.z quack
execute store result storage quack:api quaternions.out[3] float 0.00003051757812500000 run scoreboard players get quaternion.out.w quack