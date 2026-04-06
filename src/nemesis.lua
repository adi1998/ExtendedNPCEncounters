local nemesisEncounters = {
    N = {
        NemesisCombatN =
        {
            InheritFrom = { "BaseNemesisCombat", "GeneratedN" },
            CanEncounterSkip = false,
            GameStateRequirements =
            {
                {
                    Path = { "CurrentRun", "EncountersOccurredCache" },
                    HasNone = { "NemesisCombatIntro", "NemesisCombatF", "NemesisCombatG", "NemesisCombatH", "NemesisCombatI", "NemesisCombatN", "NemesisCombatP" },
                },
                {
                    PathTrue = { "GameState", "EncountersCompletedCache", "NemesisCombatIntro" },
                },
                {
                    PathTrue = { "GameState", "TextLinesRecord", "NemesisGetFreeItemIntro01" },
                },
                {
                    PathFalse = { "CurrentRun", "TextLinesRecord", "NemesisWithNarcissus01" },
                },
                {
                    Path = { "CurrentRun", "BiomeDepthCache" },
                    Comparison = ">=",
                    Value = 3,
                },
                {
                    PathTrue = {_PLUGIN.guid, "config", "nemesis", "ephyra"}
                },
                NamedRequirements = { "NoRecentNemesisEncounter", "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "HecateMissing", },
            },
        },
    },

    N_SubRooms = {
        NemesisRandomEventN_SubRoom = {
            InheritFrom = {"NemesisRandomEvent"},
            GameStateRequirements =
            {
                {
                    PathTrue = { "GameState", "EncountersCompletedCache", "NemesisCombatIntro" },
                },
                {
                    Path = { "CurrentRun", "TextLinesRecord" },
                    HasNone = { "NemesisCombatFirstIntro", "NemesisWithNarcissus01" },
                },
                {
                    Path = { "CurrentRun", "BiomeDepthCache" },
                    Comparison = ">=",
                    Value = 5,
                },
                {
                    PathTrue = {_PLUGIN.guid, "config", "nemesis", "ephyra"}
                },
                NamedRequirements = { "NoRecentNemesisEncounter", "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "HecateMissing", "NemesisBecomingCloserAvailable", },
            },
        },
    },

    P = {
        NemesisCombatP = {
            InheritFrom = {"BaseNemesisCombat", "GeneratedP"},
            BlockMultipleEncounters = true,
            CanEncounterSkip = false,
            RequireRoomTag = "Indoor",
            GameStateRequirements =
            {
                {
                    Path = { "CurrentRun", "EncountersOccurredCache" },
                    HasNone = { "NemesisCombatIntro", "NemesisCombatF", "NemesisCombatG", "NemesisCombatH", "NemesisCombatI", "NemesisCombatN", "NemesisCombatP" },
                },
                {
                    PathTrue = { "GameState", "EncountersCompletedCache", "NemesisCombatIntro" },
                },
                {
                    PathTrue = { "GameState", "TextLinesRecord", "NemesisGetFreeItemIntro01" },
                },
                {
                    PathFalse = { "CurrentRun", "TextLinesRecord", "NemesisWithNarcissus01" },
                },
                {
                    Path = { "CurrentRun", "BiomeDepthCache" },
                    Comparison = ">=",
                    Value = 4,
                },
                {
                    PathTrue = {_PLUGIN.guid, "config", "nemesis", "olympus"}
                },
                NamedRequirements = { "NoRecentNemesisEncounter", "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "HecateMissing", },
            },
        }
    }
}

local weight = config.nemesis.weight
weight = mod.clampweight(weight)

mod.AddNewEncounters(nemesisEncounters, weight, {
    game.NamedRequirementsData.NoRecentFieldNPCEncounter[1].TableValuesToCount,
    game.NamedRequirementsData.NoRecentNemesisEncounter[1].TableValuesToCount
})