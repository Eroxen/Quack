execute positioned ~ ~1 ~ unless entity @e[type=item_display,tag=quack.entity.test_vis.quat,distance=..0.1] run summon item_display ~ ~ ~ {Tags:["quack.entity","quack.entity.test_vis","quack.entity.test_vis.quat"],item:{id:"minecraft:crafter"}}
execute positioned ~ ~1 ~ unless entity @e[type=item_display,tag=quack.entity.test_vis.rot,distance=..0.1] run summon item_display ~ ~ ~ {Tags:["quack.entity","quack.entity.test_vis","quack.entity.test_vis.rot"],item:{id:"minecraft:glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]}}

data modify storage quack:api euler set from entity @p Rotation
data modify storage quack:api euler append value 0f
function quack:api/storage/pitch_yaw_to_quaternion

execute positioned ~ ~1 ~ as @n[type=item_display,tag=quack.entity.test_vis.quat,distance=..0.1] run data modify entity @s transformation.left_rotation set from storage quack:api quaternion
execute positioned ~ ~1 ~ as @n[type=item_display,tag=quack.entity.test_vis.rot,distance=..0.1] run data modify entity @s Rotation set from entity @p Rotation