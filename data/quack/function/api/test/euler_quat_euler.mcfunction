data modify storage quack:api euler set from entity @s Rotation
data modify storage quack:api euler append value 0f
function quack:api/storage/euler_to_quaternion
tellraw @s {"text": "inp", "extra": [{"storage": "quack:api", "nbt": "euler"}]}
tellraw @s {"text": "qua", "extra": [{"storage": "quack:api", "nbt": "quaternion"}]}
function quack:api/storage/quaternion_to_euler

tellraw @s {"text": "out", "extra": [{"storage": "quack:api", "nbt": "euler"}]}