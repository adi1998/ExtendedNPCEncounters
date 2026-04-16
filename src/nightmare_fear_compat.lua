for _, encounterName in ipairs(mod.NewNPCEncounters) do
    table.insert(game.EncounterData[encounterName].GameStateRequirements, {
        FunctionName = "ReadEmAndWeep-Nightmare_Fear" .. "." .. "RequiredShrineLevel",
        FunctionArgs =
        {
            ShrineUpgradeName = "NightmareFearNoHelpMetaUpgrade",
            Comparison = "<",
            Value = 1,
        },
    })
end