# Clean up trinket menu duplicates on respawn
function trinket_management

# Restore trinket menu if player doesn't have one
execute @a[tag=!has_trinket_menu] ~ ~ ~ execute @s[c=1] ~ ~ ~ execute @e[type=hfrlc:trinket_menu,r=10,c=1] ~ ~ ~ tag @p add has_trinket_menu
execute @a[tag=!has_trinket_menu] ~ ~ ~ summon hfrlc:trinket_menu ~ ~ ~
execute @a[tag=!has_trinket_menu] ~ ~ ~ tag @s add has_trinket_menu
