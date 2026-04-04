for _, encounterName in ipairs(mod.NewNPCEncounters) do
    table.insert(game.EncounterData[encounterName].GameStateRequirements, {
        FunctionName = "RequiredShrineLevel",
        FunctionArgs =
        {
            ShrineUpgradeName = "NightmareFearNoHelpMetaUpgrade",
            Comparison = "<",
            Value = 1,
        },
    })
end