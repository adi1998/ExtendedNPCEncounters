local athenaEnconters  = {
    F = {
        AthenaCombatF = {
            InheritFrom = {"BaseAthenaCombat", "GeneratedF"},
            CanEncounterSkip = false,
		    PauseDurationAfterPriorityGroup = 0.0,
            BaseDifficulty = 250,
		    DepthDifficultyRamp = 50,
            MinWaves = 3,
		    MaxWaves = 3,
            MinTypes = 3,
            MaxTypes = 4,
            MaxTypesCap = 4,
            ActiveEnemyCapBase = 8,
		    ActiveEnemyCapMax = 8,
            MaxEliteTypes = 4,
            EnemySet = {
                "Guard_Elite",
                "Guard",
                "Guard_Elite",

                "Brawler_Elite",
                "Brawler",
                "Brawler_Elite",

                "Radiator_Elite",
                "Radiator_Elite",

                "Screamer_Elite",
                "Screamer",
                "Screamer_Elite",

                "Mage_Elite",
                "Mage_Elite",

                "SiegeVine_Elite",
            },
            GameStateRequirements =
            {
                {
                    PathTrue = { "GameState", "EncountersCompletedCache", "AthenaCombatIntro" },
                },
                {
                    PathFalse = { "CurrentRun", "UseRecord", "NPC_Athena_01" },
                },
                {
                    Path = { "CurrentRun", "BiomeDepthCache" },
                    Comparison = ">=",
                    Value = 5,
                },
                {
                    PathFalse = { "CurrentRun", "ExpiredKeepsakes", "AthenaEncounterKeepsake" },
                },
                {
                    PathTrue = {_PLUGIN.guid, "config", "athena", "erebus"}
                },
                NamedRequirements = { "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "SurfaceRouteLockedByTyphonKill" },
            },
        }
    },
    G = {
        AthenaCombatG = {
            InheritFrom = {"BaseAthenaCombat", "GeneratedG"},
            CanEncounterSkip = false,
		    PauseDurationAfterPriorityGroup = 0.0,
            MaxEliteTypes = 3,
            BaseDifficulty = 250,
            DepthDifficultyRamp = 50,
            GameStateRequirements = {
                Append = true,
                {
                    PathTrue = {_PLUGIN.guid, "config", "athena", "oceanus"}
                },
            }
        }
    },
    I = {
        AthenaCombatI = {
            InheritFrom = {"BaseAthenaCombat", "GeneratedI"},
            CanEncounterSkip = false,
		    PauseDurationAfterPriorityGroup = 0.0,
            GameStateRequirements = {
                Append = true,
                {
                    PathTrue = {_PLUGIN.guid, "config", "athena", "tartarus"}
                },
            }
        }
    },
    N = {
        AthenaCombatN = {
            InheritFrom = {"BaseAthenaCombat", "GeneratedN"},
            CanEncounterSkip = false,
            BaseDifficulty = 500,
            DepthDifficultyRamp = 120,
            MaxEliteTypes = 4,
            ActiveEnemyCapBase = 10,
		    ActiveEnemyCapMax = 10,
            MinWaves = 3,
            MaxWaves = 3,
            EnemySet = {
                "Carrion_Elite",
                "Mudman",
                "Mudman_Elite",
                "Zombie_Elite",
                "ZombieSpawner",
                "ZombieSpawner_Elite",
                "ZombieHeavyRanged",
                "ZombieHeavyRanged_Elite",
                "ZombieAssassin",
                "ZombieAssassin_Elite",
            },
		    PauseDurationAfterPriorityGroup = 0.0,
            GameStateRequirements = {
                Append = true,
                {
                    PathTrue = {_PLUGIN.guid, "config", "athena", "ephyra"}
                },
            }
        }
    },
}

local zagAthenaEncounters = {
    Tartarus = {
        AthenaCombatTartarus = {
            InheritFrom = {"BaseAthenaCombat", "GeneratedTartarus"},
            CanEncounterSkip = false,
		    PauseDurationAfterPriorityGroup = 0.0,
            GameStateRequirements = {
                Append = true,
                {
                    PathTrue = {_PLUGIN.guid, "config", "athena", "tartarus_nightmare"}
                },
            }
        }
    },
    Asphodel = {
        AthenaCombatAsphodel = {
            InheritFrom = {"BaseAthenaCombat", "GeneratedAsphodel"},
            CanEncounterSkip = false,
		    PauseDurationAfterPriorityGroup = 0.0,
            GameStateRequirements = {
                Append = true,
                {
                    PathTrue = {_PLUGIN.guid, "config", "athena", "asphodel"}
                },
            }
        }
    },
    Elysium = {
        AthenaCombatElysium = {
            InheritFrom = {"BaseAthenaCombat", "GeneratedElysium"},
            CanEncounterSkip = false,
		    PauseDurationAfterPriorityGroup = 0.0,
            GameStateRequirements = {
                Append = true,
                {
                    PathTrue = {_PLUGIN.guid, "config", "athena", "elysium"}
                },
            }
        }
    },
}

if mod.IsZag then
    game.OverwriteTableKeys(athenaEnconters, zagAthenaEncounters)
end

local weight = config.athena.weight
-- weight = mod.clampweight(weight)

mod.AddNewEncounters(athenaEnconters, weight, {
    game.NamedRequirementsData.NoRecentFieldNPCEncounter[1].TableValuesToCount
})