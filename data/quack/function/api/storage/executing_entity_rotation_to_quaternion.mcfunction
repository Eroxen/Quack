#####################################################################
# api/storage/executing_entity_rotation_to_quaternion.mcfunction
# written by Eroxen
#
# Converts the Rotation of the executing entity to a quaternion.
#
# Storage output :
# - quack:api :
#   - quaternion: quaternion
#####################################################################

data modify storage quack:api euler set from entity @s Rotation
data modify storage quack:api euler append value 0f
function quack:api/storage/pitch_yaw_to_quaternion