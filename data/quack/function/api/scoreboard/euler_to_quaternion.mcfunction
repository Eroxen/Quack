#####################################################################
# api/scoreboard/euler_to_quaternion.mcfunction
# written by Eroxen
#
# Converts an Euler angle ([yaw, pitch, roll])
# to a quaternion ([w, x, y, z]).
# Rotation order is yaw -> pitch -> roll.
#
# Scoreboard input :
# - quack :
#   - euler.yaw: yaw in degrees, scaled by 10_000
#   - euler.pitch: pitch in degrees, scaled by 10_000
#   - euler.roll: roll in degrees, scaled by 10_000
#
# Scoreboard output :
# - quack :
#   - quaternion.x: //
#   - quaternion.y: //
#   - quaternion.z: //
#   - quaternion.w: quaternion
#   Scores are in the range (-2^15, 2^15) and represent
#   real numbers in the range (-1, 1).
#####################################################################

function quack:internal/euler/get_sin_cos_of_all

scoreboard players operation #internal.temp.cp*cy quack = #internal.euler.cos_pitch quack
scoreboard players operation #internal.temp.cp*cy quack *= #internal.euler.cos_yaw quack
scoreboard players operation #internal.temp.cp*cy quack /= #const.2^15 quack

scoreboard players operation #internal.temp.sp*cy quack = #internal.euler.sin_pitch quack
scoreboard players operation #internal.temp.sp*cy quack *= #internal.euler.cos_yaw quack
scoreboard players operation #internal.temp.sp*cy quack /= #const.2^15 quack

scoreboard players operation #internal.temp.sp*sy quack = #internal.euler.sin_pitch quack
scoreboard players operation #internal.temp.sp*sy quack *= #internal.euler.sin_yaw quack
scoreboard players operation #internal.temp.sp*sy quack /= #const.2^15 quack

scoreboard players operation #internal.temp.cp*sy quack = #internal.euler.cos_pitch quack
scoreboard players operation #internal.temp.cp*sy quack *= #internal.euler.sin_yaw quack
scoreboard players operation #internal.temp.cp*sy quack /= #const.2^15 quack



scoreboard players operation quaternion.w quack = #internal.euler.cos_roll quack
scoreboard players operation quaternion.w quack *= #internal.temp.cp*cy quack
scoreboard players operation quaternion.w quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = #internal.euler.sin_roll quack
scoreboard players operation #internal.temp quack *= #internal.temp.sp*sy quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.w quack -= #internal.temp quack

scoreboard players operation quaternion.x quack = #internal.euler.cos_roll quack
scoreboard players operation quaternion.x quack *= #internal.temp.sp*cy quack
scoreboard players operation quaternion.x quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = #internal.euler.sin_roll quack
scoreboard players operation #internal.temp quack *= #internal.temp.cp*sy quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.x quack -= #internal.temp quack

scoreboard players operation quaternion.y quack = #internal.euler.cos_roll quack
scoreboard players operation quaternion.y quack *= #internal.temp.cp*sy quack
scoreboard players operation quaternion.y quack /= #const.-2^15 quack
scoreboard players operation #internal.temp quack = #internal.euler.sin_roll quack
scoreboard players operation #internal.temp quack *= #internal.temp.sp*cy quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.y quack -= #internal.temp quack

scoreboard players operation quaternion.z quack = #internal.euler.sin_roll quack
scoreboard players operation quaternion.z quack *= #internal.temp.cp*cy quack
scoreboard players operation quaternion.z quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = #internal.euler.cos_roll quack
scoreboard players operation #internal.temp quack *= #internal.temp.sp*sy quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.z quack += #internal.temp quack