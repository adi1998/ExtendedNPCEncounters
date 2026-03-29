local nemesisEncounters = {
    N = {
        NemesisRandomEventN = {
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
                    Value = 2,
                },
                NamedRequirements = { "NoRecentNemesisEncounter", "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "HecateMissing", "NemesisBecomingCloserAvailable", },
            },
        },
        NemesisCombatN =
        {
            InheritFrom = { "BaseNemesisCombat", "GeneratedN" },
            CanEncounterSkip = false,
            GameStateRequirements =
            {
                {
                    Path = { "CurrentRun", "EncountersOccurredCache" },
                    HasNone = { "NemesisCombatIntro", "NemesisCombatF", "NemesisCombatG", "NemesisCombatH", "NemesisCombatI", "NemesisCombatN" },
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
                    Value = 1,
                },
                NamedRequirements = { "NoRecentNemesisEncounter", "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "HecateMissing", },
            },
        },
    }
}

local weight = 1

for roomSet, encounterTable in pairs(nemesisEncounters) do
    for _, roomName in ipairs(mod.RoomSets[roomSet]) do
        local roomData = game.RoomData[roomName]
        for encounterName, encounterData in pairs(encounterTable) do
            game.EncounterData[encounterName] = encounterData
            for i = 1, weight do
                if roomSet ~= "H" then
                    table.insert(roomData.LegalEncounters, encounterName)
                else
                    table.insert(game.ObstacleData.FieldsRewardCage.LegalEncounters, encounterName)
                end
            end
            table.insert(game.NamedRequirementsData.NoRecentFieldNPCEncounter[1].TableValuesToCount, encounterName)
            table.insert(game.NamedRequirementsData.NoRecentNemesisEncounter[1].TableValuesToCount, encounterName)
        end
    end
end