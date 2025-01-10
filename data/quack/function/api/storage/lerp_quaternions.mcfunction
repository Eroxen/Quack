#####################################################################
# api/storage/lerp_quaternions.mcfunction
# written by Eroxen
#
# Linearly interpolates between two input quaternions.
# Creates an array containing the first input, n
# interpolations, and finally the second input.
#
# Storage input :
# - quack:api :
#   - n: number of interpolations
#   - quaternions:
#     - a: first quaternion
#     - b: second quaternion
#
# Storage output :
# - quack:api :
#   - quaternions: 
#     - array: input quaternions and interpolations
#####################################################################

