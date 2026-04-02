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
                Append = true,
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
                    PathTrue = {_PLUGIN.guid, "config", "thanatos", "erebus"}
                },
                NamedRequirements = { "NoRecentFieldNPCEncounter" },
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
                Append = true,
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
                    PathTrue = {_PLUGIN.guid, "config", "thanatos", "oceanus"}
                },
                NamedRequirements = { "NoRecentFieldNPCEncounter" },
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
                Append = true,
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
            }
        },
    },
}

local weight = 1

for roomSet, encounterTable in pairs(thanatosEncounters) do
    for _, roomName in ipairs(mod.RoomSets[roomSet]) do
        local roomData = game.RoomData[roomName]
        for encounterName, encounterData in pairs(encounterTable) do
            game.EncounterData[encounterName] = encounterData
            for i = 1, weight do
                if roomSet ~= "H" then
                    table.insert(roomData.LegalEncounters, encounterName)
                    if roomData.MultipleEncountersData then
                        table.insert(roomData.MultipleEncountersData[1].LegalEncounters, encounterName)
                    end
                else
                    table.insert(game.ObstacleData.FieldsRewardCage.LegalEncounters, encounterName)
                end
            end
            table.insert(game.NamedRequirementsData.NoRecentFieldNPCEncounter[1].TableValuesToCount, encounterName)
        end
    end
end

function mod.LoadThanatosMusic()
    rom.audio.load_bank(rom.path.combine(rom.paths.plugins_data(), "NikkelM-Zagreus_Journey",
        "Content\\Audio\\Desktop\\" .. "ModsNikkelMHadesBiomesMusicModded" .. ".bank"))

    rom.audio.load_bank(rom.path.combine(rom.paths.Content(), "Audio\\Desktop\\" .. "SoundsModsNikkelMHadesBiomes" .. ".bank"))
end