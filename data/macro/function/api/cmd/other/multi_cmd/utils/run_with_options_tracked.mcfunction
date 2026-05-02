# Storage sıfırla
data modify storage macro:output multiCommands.executed set value 0b

# Test et
execute store success storage macro:output multiCommands.executed byte 1.0 run \
function macro:api/cmd/other/multi_cmd/advanced/run_with_options

# Kontrol et
data get storage macro:output multiCommands.executed