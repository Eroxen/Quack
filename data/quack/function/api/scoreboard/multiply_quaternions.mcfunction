#####################################################################
# api/scoreboard/multiply_quaternions.mcfunction
# written by Eroxen
#
# Multiplies two quaternions stored in scores together.
# Scores are in the range (-2^15, 2^15) and represent
# real numbers in the range (-1, 1).
#
# Scoreboard input :
# - quack :
#   - quaternion.a.x: //
#   - quaternion.a.y: //
#   - quaternion.a.z: //
#   - quaternion.a.w: first quaternion
#   - quaternion.b.x: //
#   - quaternion.b.y: //
#   - quaternion.b.z: //
#   - quaternion.b.w: second quaternion
#
# Scoreboard output :
# - quack :
#   - quaternion.out.x: //
#   - quaternion.out.y: //
#   - quaternion.out.z: //
#   - quaternion.out.w: quaternion
#####################################################################

scoreboard players operation quaternion.out.x quack = quaternion.a.w quack
scoreboard players operation quaternion.out.x quack *= quaternion.b.x quack
scoreboard players operation quaternion.out.x quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = quaternion.a.x quack
scoreboard players operation #internal.temp quack *= quaternion.b.w quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.x quack += #internal.temp quack
scoreboard players operation #internal.temp quack = quaternion.a.y quack
scoreboard players operation #internal.temp quack *= quaternion.b.z quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.x quack += #internal.temp quack
scoreboard players operation #internal.temp quack = quaternion.a.z quack
scoreboard players operation #internal.temp quack *= quaternion.b.y quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.x quack -= #internal.temp quack

scoreboard players operation quaternion.out.y quack = quaternion.a.w quack
scoreboard players operation quaternion.out.y quack *= quaternion.b.y quack
scoreboard players operation quaternion.out.y quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = quaternion.a.x quack
scoreboard players operation #internal.temp quack *= quaternion.b.z quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.y quack -= #internal.temp quack
scoreboard players operation #internal.temp quack = quaternion.a.y quack
scoreboard players operation #internal.temp quack *= quaternion.b.w quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.y quack += #internal.temp quack
scoreboard players operation #internal.temp quack = quaternion.a.z quack
scoreboard players operation #internal.temp quack *= quaternion.b.x quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.y quack += #internal.temp quack

scoreboard players operation quaternion.out.z quack = quaternion.a.w quack
scoreboard players operation quaternion.out.z quack *= quaternion.b.z quack
scoreboard players operation quaternion.out.z quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = quaternion.a.x quack
scoreboard players operation #internal.temp quack *= quaternion.b.y quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.z quack += #internal.temp quack
scoreboard players operation #internal.temp quack = quaternion.a.y quack
scoreboard players operation #internal.temp quack *= quaternion.b.x quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.z quack -= #internal.temp quack
scoreboard players operation #internal.temp quack = quaternion.a.z quack
scoreboard players operation #internal.temp quack *= quaternion.b.w quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.z quack += #internal.temp quack

scoreboard players operation quaternion.out.w quack = quaternion.a.w quack
scoreboard players operation quaternion.out.w quack *= quaternion.b.w quack
scoreboard players operation quaternion.out.w quack /= #const.2^15 quack
scoreboard players operation #internal.temp quack = quaternion.a.x quack
scoreboard players operation #internal.temp quack *= quaternion.b.x quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.w quack -= #internal.temp quack
scoreboard players operation #internal.temp quack = quaternion.a.y quack
scoreboard players operation #internal.temp quack *= quaternion.b.y quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.w quack -= #internal.temp quack
scoreboard players operation #internal.temp quack = quaternion.a.z quack
scoreboard players operation #internal.temp quack *= quaternion.b.z quack
scoreboard players operation #internal.temp quack /= #const.2^15 quack
scoreboard players operation quaternion.out.w quack -= #internal.temp quack


scoreboard players operation #internal.sqrt.in quack = quaternion.out.x quack
scoreboard players operation #internal.sqrt.in quack *= quaternion.out.x quack
scoreboard players operation #internal.temp quack = quaternion.out.y quack
scoreboard players operation #internal.temp quack *= quaternion.out.y quack
scoreboard players operation #internal.sqrt.in quack += #internal.temp quack
scoreboard players operation #internal.temp quack = quaternion.out.z quack
scoreboard players operation #internal.temp quack *= quaternion.out.z quack
scoreboard players operation #internal.sqrt.in quack += #internal.temp quack
scoreboard players operation #internal.temp quack = quaternion.out.w quack
scoreboard players operation #internal.temp quack *= quaternion.out.w quack
scoreboard players operation #internal.sqrt.in quack += #internal.temp quack
scoreboard players operation #internal.sqrt.in quack /= #const.2^15 quack
function quack:internal/sqrt
scoreboard players operation quaternion.out.x quack *= #const.2^15 quack
scoreboard players operation quaternion.out.x quack /= #internal.sqrt.out quack
scoreboard players operation quaternion.out.y quack *= #const.2^15 quack
scoreboard players operation quaternion.out.y quack /= #internal.sqrt.out quack
scoreboard players operation quaternion.out.z quack *= #const.2^15 quack
scoreboard players operation quaternion.out.z quack /= #internal.sqrt.out quack
scoreboard players operation quaternion.out.w quack *= #const.2^15 quack
scoreboard players operation quaternion.out.w quack /= #internal.sqrt.out quack
