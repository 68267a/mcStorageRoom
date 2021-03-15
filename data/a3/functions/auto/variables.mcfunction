
#
# Basic variable operations.
#

# Init variables
scoreboard objectives add origin dummy
scoreboard objectives setdisplay sidebar coords

# Structure
scoreboard objectives add structure dummy
scoreboard objectives setdisplay sidebar structure

# Get initial player location for first block of base entrance
execute store result score x origin run data get entity @s Pos[0]
execute store result score y origin run data get entity @s Pos[1]
execute store result score z origin run data get entity @s Pos[2]

# Get coords for structure generation
scoreboard players operation x1 structure += 5:x origin 