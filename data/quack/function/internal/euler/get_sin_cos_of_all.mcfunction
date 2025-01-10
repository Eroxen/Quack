function quack:internal/confirm_fixed_display
execute as ccb5aac3-b7fb-0e79-7b9e-6a0639fc6f93 at @s run function quack:internal/euler/get_sin_cos_of_all_as_display

# tellraw @a {"text": "yaw: ", "extra": [{"text": "cos="},{"score": {"name": "#internal.euler.cos_yaw","objective": "quack"}},{"text": " sin="},{"score": {"name": "#internal.euler.sin_yaw","objective": "quack"}}]}