local athenaEnconters  = {
    F = {
        AthenaCombatF = {
            InheritFrom = {"BaseAthenaCombat", "GeneratedF"},
            CanEncounterSkip = false,
		    PauseDurationAfterPriorityGroup = 0.0,
            BaseDifficulty = 300,
		    DepthDifficultyRamp = 100,
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
weight = mod.clampweight(weight)

mod.AddNewEncounters(athenaEnconters, weight, {
    game.NamedRequirementsData.NoRecentFieldNPCEncounter[1].TableValuesToCount
})