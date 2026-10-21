$npcs = "Icarus", "Artemis", "Heracles";

foreach ($npc in $npcs){
    python ..\MelSkin\build_pkg.py -s ".\textures\$npc\" -t ".\data\zerp-Extended_NPC_Encounters$npc" -b GR2
}

deppth2_custom hpk -c BC7 -s .\textures\IcarusFx\ -t .\data\zerp-Extended_NPC_EncountersIcarusFx