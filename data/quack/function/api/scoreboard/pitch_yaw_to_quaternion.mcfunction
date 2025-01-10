#####################################################################
# api/scoreboard/pitch_yaw_to_quaternion.mcfunction
# written by Eroxen
#
# Like euler_to_quaternion, but ignores the roll part to
# significantly simplify the math.
#####################################################################

function quack:internal/euler/get_sin_cos_of_all

scoreboard players operation quaternion.x quack = #internal.euler.cos_yaw quack
scoreboard players operation quaternion.x quack *= #internal.euler.sin_pitch quack
scoreboard players operation quaternion.x quack /= #const.2^15 quack

scoreboard players operation quaternion.y quack = #internal.euler.sin_yaw quack
scoreboard players operation quaternion.y quack *= #internal.euler.cos_pitch quack
scoreboard players operation quaternion.y quack /= #const.-2^15 quack

scoreboard players operation quaternion.z quack = #internal.euler.sin_yaw quack
scoreboard players operation quaternion.z quack *= #internal.euler.sin_pitch quack
scoreboard players operation quaternion.z quack /= #const.2^15 quack

scoreboard players operation quaternion.w quack = #internal.euler.cos_yaw quack
scoreboard players operation quaternion.w quack *= #internal.euler.cos_pitch quack
scoreboard players operation quaternion.w quack /= #const.2^15 quack