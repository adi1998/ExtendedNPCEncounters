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

    O = {
        NemesisCombatO = {
            InheritFrom = {"BaseNemesisCombat", "GeneratedO"},
            CanEncounterSkip = false,
            SkipShipsEncounterSetup = true,

            UnthreadedEvents = {
                { FunctionName = "ShipsEncounterSetup" },
                { FunctionName = "NemesisEncounterStartPresentation" },
                { FunctionName = "BeginNemesisEncounter" },
                { FunctionName = "HandleEnemySpawns" },
                { FunctionName = "CheckForAllEnemiesDead" },
                { FunctionName = "NemesisEncounterEndPresentation" },
                { FunctionName = "PostCombatAudio" },
                { FunctionName = "SpawnRoomReward" },
                { FunctionName = "HandleNemesisEncounterReward" },
                { FunctionName = "NemesisTeleportExitPresentation" },
                { FunctionName = "WaitForNextEncounterReady" },
            },

            GameStateRequirements =
            {
                {
                    Path = { "CurrentRun", "EncountersOccurredCache" },
                    HasNone = { "NemesisCombatIntro", "NemesisCombatF", "NemesisCombatG", "NemesisCombatH", "NemesisCombatI" },
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
                    PathTrue = {_PLUGIN.guid, "config", "nemesis", "thessaly"}
                },
                {
                    PathFalse = { "CurrentRun", "CurrentRoom", _PLUGIN.guid .. "NextRoomShipEncounters"},
                },
                NamedRequirements = { "NoRecentNemesisEncounter", "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "HecateMissing", },
            },
        }
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

local zagNemesisEncounters = {
    Tartarus = {
        NemesisRandomEventTartarus = {
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
                    Value = 4,
                },
                {
                    PathTrue = {_PLUGIN.guid, "config", "nemesis", "tartarus_nightmare"}
                },
                NamedRequirements = { "NoRecentNemesisEncounter", "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "HecateMissing", "NemesisBecomingCloserAvailable", },
            },
        },
        NemesisCombatTartarus = {
            InheritFrom = {"BaseNemesisCombat", "GeneratedTartarus"},
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
                    Value = 4,
                },
                {
                    PathTrue = {_PLUGIN.guid, "config", "nemesis", "tartarus_nightmare"}
                },
                NamedRequirements = { "NoRecentNemesisEncounter", "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "HecateMissing", },
            },
        }
    },
    Asphodel = {
        NemesisCombatAsphodel = {
            InheritFrom = { "BaseNemesisCombat", "GeneratedAsphodel" },
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
                    Value = 4,
                },
                {
                    PathTrue = {_PLUGIN.guid, "config", "nemesis", "asphodel"}
                },
                NamedRequirements = { "NoRecentNemesisEncounter", "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "HecateMissing", },
            },
        }
    },
    Elysium = {
        IcarusCombatElysium = {
            InheritFrom = { "BaseNemesisCombat", "GeneratedElysium" },
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
                    Value = 4,
                },
                {
                    PathTrue = {_PLUGIN.guid, "config", "nemesis", "elysium"}
                },
                NamedRequirements = { "NoRecentNemesisEncounter", "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "HecateMissing", },
            },
        }
    },
}

if mod.IsZag then
    game.OverwriteTableKeys(nemesisEncounters, zagNemesisEncounters)
end

local weight = config.nemesis.weight
weight = mod.clampweight(weight)

mod.AddNewEncounters(nemesisEncounters, weight, {
    game.NamedRequirementsData.NoRecentFieldNPCEncounter[1].TableValuesToCount,
    game.NamedRequirementsData.NoRecentNemesisEncounter[1].TableValuesToCount
})

function mod.NemesisPostShipCombatCheckExits( nemesis, args )
	args = args or {}
	game.wait( args.Delay )
	game.NemesisTeleportExitPresentation( nemesis, args )
end

table.insert(game.VariantSetData.NPC_Nemesis_01.NemesisCombat.PostTextLineEvents, {
    Threaded = true,
    FunctionName = _PLUGIN.guid .. "." .. "NemesisPostShipCombatCheckExits",
    Args =
    {
        RandomWaitMin = 1.0,
        RandomWaitMax = 3.0,
    },
    GameStateRequirements =
    {
        {
            Path = { "CurrentRun", "CurrentRoom", "RoomSetName" },
            IsAny = { "O", },
        },
    },
})

modutil.mod.Path.Wrap("NemesisTakeRoomExit", function (base, ...)
    if not game.SessionMapState.Nemesis then
        return
    end
    return base(...)
end)