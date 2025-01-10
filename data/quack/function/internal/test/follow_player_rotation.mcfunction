execute positioned ~ ~1 ~ unless entity @e[type=item_display,tag=quack.entity.test_vis,distance=..0.1] run summon item_display ~ ~ ~ {Tags:["quack.entity","quack.entity.test_vis"],item:{id:"minecraft:crafter"}}

data modify storage quack:api euler set from entity @p Rotation
data modify storage quack:api euler append value 0f
execute store result storage quack:api euler[2] float 1 run scoreboard players add #test.rolling_roll quack 5
execute if score #test.rolling_roll quack matches 180.. run scoreboard players remove #test.rolling_roll quack 360
function quack:api/storage/euler_to_quaternion



function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion

function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion

function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion

function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion

function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion

function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion

function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion

function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion

function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion

function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion
function quack:api/storage/euler_to_quaternion



# data modify storage quack:api quaternions.b set from storage quack:api quaternion
# function quack:api/storage/multiply_quaternions

execute positioned ~ ~1 ~ as @n[type=item_display,tag=quack.entity.test_vis,distance=..0.1] run data modify entity @s transformation.left_rotation set from storage quack:api quaternion