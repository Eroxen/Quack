data modify storage quack:api temp set value {}
$data modify storage quack:api temp.in set value $(in)f
execute store result score #internal.sqrt.in quack run data get storage quack:api temp.in 32768
function quack:internal/sqrt
execute store result storage quack:api temp.out float 0.00003051757812500000 run scoreboard players get #internal.sqrt.out quack
tellraw @p {"storage": "quack:api", "nbt": "temp"}