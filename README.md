# Quack
<p align="center">
  <img src="quack.gif" width="200" height="200">
</p>

Quack is a library datapack that provides a couple of functions to do math on quaternions.

## What are quaternions?
Quaternions are an extension of complex numbers which can be used to describe 3D rotations. A quaternion consists of four numbers, whose meaning cannot be comprehended by us mortals. Nevertheless, they are quite useful.

## What does this have to do with block game?
Quaternions are already used in Minecraft for the `left_rotation` and `right_rotation` in the `transformation` of [Display Entities](https://minecraft.wiki/w/Display). You can use this library to calculate those quaternions from the rotation of an entity, for example. Or you could implement your own motion system that does not suffer from [gimbal lock](https://en.wikipedia.org/wiki/Gimbal_lock) for a custom entity or similar.

## Available operations
At its current state, Quack provides the following basic operations:
- Converting [Euler angles](https://en.wikipedia.org/wiki/Euler_angles) to a quaternion
- Multiplying quaternions (aka rotating quaternion a by quaternion b)
- Converting a quaternion to Euler angles

## How to use
Quack has several function you can call under `/function quack:api/*`. Functions that are not in the `api` folder are used for the underlying implementation and should not be called by your datapack.

> [!IMPORTANT]
> Before you can use Quack you need to set up the required scoreboards, which can be done by `/function quack:api/create_scoreboards`. You may want to add this function to `#minecraft:load`, but Quack does not do so by default so that you can choose for yourself.

You can use either numbers in scoreboards (`/function quack:api/scoreboard/*`) or data storage (`/function quack:api/storage/*`) as inputs and outputs for Quack. The storage functions are simply wrappers that call the scoreboard function.

### Euler -> Quaternion

Scoreboard example:
```
scoreboard players set euler.yaw quack 1200000
scoreboard players set euler.pitch quack 450000
scoreboard players set euler.roll quack 300000

function quack:api/scoreboard/euler_to_quaternion

scoreboard players get quaternion.x quack
scoreboard players get quaternion.y quack
scoreboard players get quaternion.z quack
scoreboard players get quaternion.w quack
```
The `euler.*` scores represent the three euler angles, scaled by 10.000. So the input here is a yaw of 120°, a pitch of 45° and a roll of 30°. The four scores queried would get values `-727`, `-26945`, `14404` and `11812`. These scores are scaled by $2^{15}=32768$, hence they represent the quaternion `[-0.022, -0.822, 0.439, 0.360]`.

Storage example:
```
data modify storage quack:api euler set value [120f, 45f, 30f]

function quack:api/storage/euler_to_quaternion

data get storage quack:api quaternion
```
-> `Storage quack:api has the following contents: [-0.02218628f, -0.82229614f, 0.4395752f, 0.36047363f]`

### Quaternion multiplication

Scoreboard example:
```
scoreboard players set quaternion.a.x quack -727
scoreboard players set quaternion.a.y quack -26945
scoreboard players set quaternion.a.z quack 14404
scoreboard players set quaternion.a.w quack 11812
scoreboard players set quaternion.b.x quack 0
scoreboard players set quaternion.b.y quack -8478
scoreboard players set quaternion.b.z quack 0
scoreboard players set quaternion.b.w quack 31652

function quack:api/storage/multiply_quaternions

scoreboard players get quaternion.out.x quack
scoreboard players get quaternion.out.y quack
scoreboard players get quaternion.out.z quack
scoreboard players get quaternion.out.w quack
```

Storage example
```
data modify storage quack:api quaternions.a set value [-0.02218628f, -0.82229614f, 0.4395752f, 0.36047363f]
data modify storage quack:api quaternions.b set value [0.0f, -0.25872803f, 0.0f, 0.9659424f]

function quack:api/storage/multiply_quaternions

data get storage quack:api quaternions.out
```

### Quaternion -> Euler

Scoreboard example:
```
scoreboard players set quaternion.x quack -727
scoreboard players set quaternion.y quack -26945
scoreboard players set quaternion.z quack 14404
scoreboard players set quaternion.w quack 11812

function quack:api/scoreboard/quaternion_to_euler

scoreboard players get euler.yaw quack
scoreboard players get euler.pitch quack
scoreboard players get euler.roll quack
```

Storage example:
```
data modify storage quack:api quaternion set value [-0.02218628f, -0.82229614f, 0.4395752f, 0.36047363f]

function quack:api/storage/quaternion_to_euler

data get storage quack:api euler
```

### Additional functions
`/function quack:api/scoreboard/pitch_yaw_to_quaternion` and `/function quack:api/storage/pitch_yaw_to_quaternion` only convert the pitch and yaw of an euler angle to a quaternion. This is functionally equivalent to calling `euler_to_quaternion` with roll set to 0, but runs fewer commands.

`/function quack:api/storage/executing_entity_rotation_to_quaternion` converts the rotation of the entity that executed the function to a quaternion in storage. This is just a wrapper for `quack:api/storage/pitch_yaw_to_quaternion` that first copies the entity's `Rotation` to storage.

### Final note
I hope Quack will be useful for your projects! If you have any questions or feedback about Quack, feel free to make a [GitHub issue](https://github.com/Eroxen/Quack/issues) or ask in the [Discord Server](https://discord.gg/p6jh5j2fY3).