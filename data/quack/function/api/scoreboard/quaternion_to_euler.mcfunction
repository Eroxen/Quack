#####################################################################
# api/scoreboard/quaternion_to_euler.mcfunction
# written by Eroxen
#
# Converts a quaternion ([w, x, y, z]) 
# to an Euler angle ([yaw, pitch, roll]).
# Rotation order is yaw -> pitch -> roll.
#
# Scoreboard input :
# - quack :
#   - quaternion.x: //
#   - quaternion.y: //
#   - quaternion.z: //
#   - quaternion.w: quaternion
#   Scores are in the range (-2^15, 2^15) and represent
#   real numbers in the range (-1, 1).
#
# Scoreboard output :
# - quack :
#   - euler.yaw: yaw in degrees, scaled by 10_000
#   - euler.pitch: pitch in degrees, scaled by 10_000
#   - euler.roll: roll in degrees, scaled by 10_000
#####################################################################

scoreboard players operation #internal.temp.phi1 quack = quaternion.w quack
scoreboard players operation #internal.temp.phi1 quack *= quaternion.z quack
scoreboard players operation #internal.temp.phi1 quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = quaternion.x quack
scoreboard players operation #internal.temp quack *= quaternion.y quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation #internal.temp.phi1 quack += #internal.temp quack
scoreboard players operation #internal.temp.phi1 quack *= #const.2 quack

scoreboard players operation #internal.temp.phi2 quack = quaternion.z quack
scoreboard players operation #internal.temp.phi2 quack *= quaternion.z quack
scoreboard players operation #internal.temp.phi2 quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = quaternion.x quack
scoreboard players operation #internal.temp quack *= quaternion.x quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation #internal.temp.phi2 quack += #internal.temp quack
scoreboard players operation #internal.temp.phi2 quack *= #const.-2 quack
scoreboard players operation #internal.temp.phi2 quack += #const.2^15 quack



scoreboard players operation #internal.temp.psi1 quack = quaternion.w quack
scoreboard players operation #internal.temp.psi1 quack *= quaternion.y quack
scoreboard players operation #internal.temp.psi1 quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = quaternion.x quack
scoreboard players operation #internal.temp quack *= quaternion.z quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation #internal.temp.psi1 quack += #internal.temp quack
scoreboard players operation #internal.temp.psi1 quack *= #const.2 quack

scoreboard players operation #internal.temp.psi2 quack = quaternion.x quack
scoreboard players operation #internal.temp.psi2 quack *= quaternion.x quack
scoreboard players operation #internal.temp.psi2 quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = quaternion.y quack
scoreboard players operation #internal.temp quack *= quaternion.y quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation #internal.temp.psi2 quack += #internal.temp quack
scoreboard players operation #internal.temp.psi2 quack *= #const.-2 quack
scoreboard players operation #internal.temp.psi2 quack += #const.2^15 quack



scoreboard players operation #internal.temp.theta1 quack = quaternion.w quack
scoreboard players operation #internal.temp.theta1 quack *= quaternion.x quack
scoreboard players operation #internal.temp.theta1 quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = quaternion.y quack
scoreboard players operation #internal.temp quack *= quaternion.z quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation #internal.temp.theta1 quack -= #internal.temp quack
scoreboard players operation #internal.temp.theta2 quack = #internal.temp.theta1 quack

scoreboard players operation #internal.temp.theta1 quack *= #const.2 quack
scoreboard players operation #internal.temp.theta1 quack += #const.2^15 quack
scoreboard players operation #internal.sqrt.in quack = #internal.temp.theta1 quack
function quack:internal/sqrt
scoreboard players operation #internal.temp.theta1 quack = #internal.sqrt.out quack

scoreboard players operation #internal.temp.theta2 quack *= #const.-2 quack
scoreboard players operation #internal.temp.theta2 quack += #const.2^15 quack
scoreboard players operation #internal.sqrt.in quack = #internal.temp.theta2 quack
function quack:internal/sqrt
scoreboard players operation #internal.temp.theta2 quack = #internal.sqrt.out quack

function quack:internal/euler/atan2s

scoreboard players operation euler.yaw quack = #internal.temp.psi quack
scoreboard players operation euler.pitch quack = #internal.temp.theta quack
scoreboard players operation euler.roll quack = #internal.temp.phi quack