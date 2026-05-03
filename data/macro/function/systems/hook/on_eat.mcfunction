# macro:systems/hook/on_eat
# Binds a function or command to the "eat" event.
#
# INPUT (storage macro:input):
#   func → function to run when a player eats
#   cmd  → command to run when a player eats (used if func is absent)
#
# USAGE:
#   data modify storage macro:input func set value "mypack:on_eat"
#   function macro:systems/hook/on_eat
#   -- or --
#   data modify storage macro:input cmd set value "say I ate something"
#   function macro:systems/hook/on_eat
execute unless data storage macro:engine global{loaded:1b} run return 0

data modify storage macro:input event set value "eat"
function macro:systems/hook/bind
