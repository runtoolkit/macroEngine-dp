function macro:core/lib/internal/queue_run_func with storage macro:engine _event_tmp[0]
data remove storage macro:engine _event_tmp[0]
execute if data storage macro:engine _event_tmp[0] run function macro:events/internal/fire_next
