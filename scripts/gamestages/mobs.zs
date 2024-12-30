/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 1000


import mods.MobStages;

import scripts.util.gamestages as GameStagesUtil;

val mobStages as string[string] = {
    "enderiozoo:concussioncreeper": "hardmode",
    "enderiozoo:direslime": "hardmode",
    "enderiozoo:direwolf": "hardmode",
    "enderiozoo:enderminy": "hardmode",
    "enderiozoo:epicsquid": "hardmode",
    "enderiozoo:fallenknight": "hardmode",
    "enderiozoo:fallenmount": "hardmode",
    "enderiozoo:lovechild": "hardmode",
    "enderiozoo:withercat": "hardmode",
    "enderiozoo:witherwitch": "hardmode",
    "touhou_little_maid:entity.monster.fairy": "nether",
    "touhou_little_maid:entity.monster.rinnosuke": "nether",
    "minecraft:blaze": "twilight_shield",
    "minecraft:wither_skeleton": "twilight_shield",
    "thaumcraft:eldritchguardian": "novice_wizard",
    "thaumcraft:cultistportallesser": "novice_wizard",
    "mowziesmobs:barako": "wyvern",
    "mowziesmobs:frostmaw": "hardmode",
    "minecraft:wither": "abyssal_conquerer"
} as string[string];

val mobReplacements as string[string] = {
    "enderiozoo:withercat": "minecraft:ocelot",
    "enderiozoo:witherwitch": "minecraft:witch",
    "enderiozoo:lovechild": "minecraft:zombie",
    "enderiozoo:fallenknight": "minecraft:skeleton",
    "enderiozoo:fallenmount": "minecraft:zombie_horse",
    "enderiozoo:epicsquid": "minecraft:squid",
    "enderiozoo:enderminy": "minecraft:enderman",
    "enderiozoo:direwolf": "minecraft:wolf",
    "enderiozoo:concussioncreeper": "minecraft:creeper"
} as string[string];

for mob, stage in mobStages {
    MobStages.addStage(stage, mob);
    MobStages.addRange(mob, 256);
}

for mob in mobReplacements {
    var replacement as string = mobReplacements[mob] as string;

    // Disabled mob replacement because it causes a bug where mob spawns ignore spawn rules
    // https://github.com/Darkhax-Minecraft/MobStages/issues/7

    // MobStages.addReplacement(mob, replacement);
    // MobStages.toggleSpawner(mob, true);
}
