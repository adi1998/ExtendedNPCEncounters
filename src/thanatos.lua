local thanatosEncounters = {
    F = {
        ThanatosCombatF =
        {
            InheritFrom = { "BaseThanatos", "GeneratedF" },
            RequireAnyEncounterCompleted = { "ThanatosElysium", "ThanatosElysiumIntro", },
            BaseDifficulty = 400,
            MinTypes = 4,
            MaxTypes = 5,
            MaxTypesCap = 5,
            MinWaves = 3,
            MaxWaves = 3,
            EnemySet = game.EnemySets.BiomeF,
            ActiveEnemyCapBase = 8,

            RequiredMinBiomeDepth = 2,

            HardEncounterOverrideValues =
            {
                DepthDifficultyRamp = 40,
            },
            LoadPackages = { "ModsNikkelMHadesBiomesFxOriginal", "ModsNikkelMHadesBiomesGUIOriginal", "NikkelM-HadesBiomesGUIModded", "NikkelM-HadesBiomesFxModded" },
            StartRoomUnthreadedEvents = {
                {
                    FunctionName = "GenericPresentation",
                    Args =
                    {
                        LoadVoiceBanks = { "Thanatos", "ThanatosField", "ZagreusField" },
                        LoadPackages = { "ModsNikkelMHadesBiomesFxOriginal", },
                    },
                },
                {
                    FunctionName = _PLUGIN.guid .. "." .. "LoadThanatosMusic",
                }
            },
            GameStateRequirements = {
                {
                    -- Didn't have the romance voiceline this run
                    Path = { "CurrentRun", "TextLinesRecord" },
                    HasNone = { "BecameCloseWithThanatos01", "BecameCloseWithThanatos01_B" }
                },
                {
                    Path = {"CurrentRun", "ThanatosSpawns"},
                    Comparison = "<",
                    Value = 1,
                },
                {
                    Path = { "CurrentRun", "BiomeDepthCache" },
                    Comparison = ">=",
                    Value = 4,
                },
                {
                    PathTrue = { _PLUGIN.guid, "config", "thanatos", "erebus" }
                },
                NamedRequirements = { "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive" },
            }
        },
    },

    G = {
        ThanatosCombatG =
        {
            InheritFrom = { "BaseThanatos", "GeneratedG" },
            RequireAnyEncounterCompleted = { "ThanatosElysium", "ThanatosElysiumIntro", },
            BaseDifficulty = 500,
            MinTypes = 4,
            MaxTypes = 5,
            MaxTypesCap = 5,
            MinWaves = 3,
            MaxWaves = 3,
            EnemySet = game.EnemySets.BiomeG,
            ActiveEnemyCapBase = 8,

            RequiredMinBiomeDepth = 2,

            HardEncounterOverrideValues =
            {
                DepthDifficultyRamp = 40,
            },
            LoadPackages = { "ModsNikkelMHadesBiomesFxOriginal", "ModsNikkelMHadesBiomesGUIOriginal", "NikkelM-HadesBiomesGUIModded", "NikkelM-HadesBiomesFxModded" },
            StartRoomUnthreadedEvents = {
                {
                    FunctionName = "GenericPresentation",
                    Args =
                    {
                        LoadVoiceBanks = { "Thanatos", "ThanatosField", "ZagreusField" },
                        LoadPackages = { "ModsNikkelMHadesBiomesFxOriginal", },
                    },
                },
                {
                    FunctionName = _PLUGIN.guid .. "." .. "LoadThanatosMusic",
                }
            },
            GameStateRequirements = {
                {
                    -- Didn't have the romance voiceline this run
                    Path = { "CurrentRun", "TextLinesRecord" },
                    HasNone = { "BecameCloseWithThanatos01", "BecameCloseWithThanatos01_B" }
                },
                {
                    Path = {"CurrentRun", "ThanatosSpawns"},
                    Comparison = "<",
                    Value = 1,
                },
                {
                    Path = { "CurrentRun", "BiomeDepthCache" },
                    Comparison = ">=",
                    Value = 3,
                },
                {
                    PathTrue = { _PLUGIN.guid, "config", "thanatos", "oceanus" }
                },
                NamedRequirements = { "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive" },
            }
        },
    },

    I = {
        ThanatosCombatI =
        {
            InheritFrom = { "BaseThanatos", "GeneratedI" },
            RequireAnyEncounterCompleted = { "ThanatosElysium", "ThanatosElysiumIntro", },
            BaseDifficulty = 700,
            MinTypes = 4,
            MaxTypes = 5,
            MaxTypesCap = 5,
            MinWaves = 3,
            MaxWaves = 3,
            EnemySet = game.EnemySets.BiomeI,
            ActiveEnemyCapBase = 8,

            RequireNotRoomReward = { },

            RequiredMinBiomeDepth = 2,

            HardEncounterOverrideValues =
            {
                DepthDifficultyRamp = 40,
            },
            LoadPackages = { "ModsNikkelMHadesBiomesFxOriginal", "ModsNikkelMHadesBiomesGUIOriginal", "NikkelM-HadesBiomesGUIModded", "NikkelM-HadesBiomesFxModded" },
            StartRoomUnthreadedEvents = {
                {
                    FunctionName = "GenericPresentation",
                    Args =
                    {
                        LoadVoiceBanks = { "Thanatos", "ThanatosField", "ZagreusField" },
                        LoadPackages = { "ModsNikkelMHadesBiomesFxOriginal", },
                    },
                },
                {
                    FunctionName = _PLUGIN.guid .. "." .. "LoadThanatosMusic",
                }
            },
            GameStateRequirements = {
                {
                    -- Didn't have the romance voiceline this run
                    Path = { "CurrentRun", "TextLinesRecord" },
                    HasNone = { "BecameCloseWithThanatos01", "BecameCloseWithThanatos01_B" }
                },
                {
                    Path = {"CurrentRun", "ThanatosSpawns"},
                    Comparison = "<",
                    Value = 1,
                },
                {
                    Path = { "CurrentRun", "BiomeDepthCache" },
                    Comparison = ">=",
                    Value = 3,
                },
                {
                    PathTrue = { _PLUGIN.guid, "config", "thanatos", "tartarus" }
                },
                NamedRequirements = { "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive" },
            }
        },
    },

    N = {
        ThanatosCombatN = {
            InheritFrom = { "BaseThanatos", "GeneratedN" },
            RequireAnyEncounterCompleted = { "ThanatosElysium", "ThanatosElysiumIntro", },
            BaseDifficulty = 400,
            MinTypes = 4,
            MaxTypes = 5,
            MaxTypesCap = 5,
            MinWaves = 3,
            MaxWaves = 3,
            EnemySet = game.EnemySets.BiomeN,
            ActiveEnemyCapBase = 8,

            RequiredMinBiomeDepth = 2,

            HardEncounterOverrideValues =
            {
                DepthDifficultyRamp = 40,
            },
            LoadPackages = { "ModsNikkelMHadesBiomesFxOriginal", "ModsNikkelMHadesBiomesGUIOriginal", "NikkelM-HadesBiomesGUIModded", "NikkelM-HadesBiomesFxModded" },
            StartRoomUnthreadedEvents = {
                {
                    FunctionName = "GenericPresentation",
                    Args =
                    {
                        LoadVoiceBanks = { "Thanatos", "ThanatosField", "ZagreusField" },
                        LoadPackages = { "ModsNikkelMHadesBiomesFxOriginal", },
                    },
                },
                {
                    FunctionName = _PLUGIN.guid .. "." .. "LoadThanatosMusic",
                }
            },
            GameStateRequirements = {
                {
                    -- Didn't have the romance voiceline this run
                    Path = { "CurrentRun", "TextLinesRecord" },
                    HasNone = { "BecameCloseWithThanatos01", "BecameCloseWithThanatos01_B" }
                },
                {
                    Path = {"CurrentRun", "ThanatosSpawns"},
                    Comparison = "<",
                    Value = 1,
                },
                {
                    Path = { "CurrentRun", "BiomeDepthCache" },
                    Comparison = ">=",
                    Value = 4,
                },
                {
                    PathTrue = { _PLUGIN.guid, "config", "thanatos", "ephyra" }
                },
                NamedRequirements = { "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive" },
            }
        },
    },

    P = {
        ThanatosCombatP =
        {
            InheritFrom = { "BaseThanatos", "GeneratedP" },
            RequireAnyEncounterCompleted = { "ThanatosElysium", "ThanatosElysiumIntro", },
            BaseDifficulty = 700,
            MinTypes = 4,
            MaxTypes = 5,
            MaxTypesCap = 5,
            MinWaves = 3,
            MaxWaves = 3,
            EnemySet = game.EnemySets.BiomeP,
            ActiveEnemyCapBase = 8,
            BlockMultipleEncounters = true,
            CanEncounterSkip = false,
            RequireNotRoomReward = { },

            RequiredMinBiomeDepth = 2,

            HardEncounterOverrideValues =
            {
                DepthDifficultyRamp = 40,
            },
            LoadPackages = { "ModsNikkelMHadesBiomesFxOriginal", "ModsNikkelMHadesBiomesGUIOriginal", "NikkelM-HadesBiomesGUIModded", "NikkelM-HadesBiomesFxModded" },
            StartRoomUnthreadedEvents = {
                {
                    FunctionName = "GenericPresentation",
                    Args =
                    {
                        LoadVoiceBanks = { "Thanatos", "ThanatosField", "ZagreusField" },
                        LoadPackages = { "ModsNikkelMHadesBiomesFxOriginal", },
                    },
                },
                {
                    FunctionName = _PLUGIN.guid .. "." .. "LoadThanatosMusic",
                }
            },
            GameStateRequirements = {
                {
                    -- Didn't have the romance voiceline this run
                    Path = { "CurrentRun", "TextLinesRecord" },
                    HasNone = { "BecameCloseWithThanatos01", "BecameCloseWithThanatos01_B" }
                },
                {
                    Path = {"CurrentRun", "ThanatosSpawns"},
                    Comparison = "<",
                    Value = 1,
                },
                {
                    Path = { "CurrentRun", "BiomeDepthCache" },
                    Comparison = ">=",
                    Value = 3,
                },
                {
                    PathTrue = { _PLUGIN.guid, "config", "thanatos", "olympus" }
                },
                NamedRequirements = { "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive" },
            }
        },
    },
}

local weight = config.thanatos.weight
weight = mod.clampweight(weight)

mod.AddNewEncounters(thanatosEncounters, weight, {
    game.NamedRequirementsData.NoRecentFieldNPCEncounter[1].TableValuesToCount,
})

function mod.LoadThanatosMusic()
    rom.audio.load_bank(rom.path.combine(rom.paths.plugins_data(), "NikkelM-Zagreus_Journey",
        "Content\\Audio\\Desktop\\" .. "ModsNikkelMHadesBiomesMusicModded" .. ".bank"))

    rom.audio.load_bank(rom.path.combine(rom.paths.Content(), "Audio\\Desktop\\" .. "SoundsModsNikkelMHadesBiomes" .. ".bank"))
end