# macro:systems/hook/on_hero_of_the_village
# Reward: hero_of_the_village advancement (raid victory)
execute unless data storage macro:engine global{loaded:1b} run return 0

advancement revoke @s only macro:systems/hook/hero_of_the_village
scoreboard players add @s macro.hook_hero_of_the_village 1
