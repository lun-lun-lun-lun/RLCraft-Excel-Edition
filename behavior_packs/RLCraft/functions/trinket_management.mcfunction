# Mark existing active trinkets before spawning new ones
event entity @e[type=hfrlc:trinket_menu,c=1] mark_as_active

# Check for duplicates and mark them
execute @e[type=hfrlc:trinket_menu] ~ ~ ~ execute @e[type=hfrlc:trinket_menu,r=0.1,c=2] ~ ~ ~ event entity @s mark_as_duplicate

# Clean up only duplicate trinkets (variant=2)
event entity @e[type=hfrlc:trinket_menu,variant=2] despawn

# Ensure only one active trinket per player
execute @a ~ ~ ~ execute @e[type=hfrlc:trinket_menu,r=10,c=2] ~ ~ ~ event entity @s mark_as_duplicate
event entity @e[type=hfrlc:trinket_menu,variant=2] despawn
