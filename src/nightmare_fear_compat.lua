for _, encounterName in ipairs(mod.NewNPCEncounters) do
    if game.EncounterData[encounterName] then
        table.insert(game.EncounterData[encounterName].GameStateRequirements, {
            FunctionName = "ReadEmAndWeep-Nightmare_Fear" .. "." .. "RequiredShrineLevel",
            FunctionArgs =
            {
                ShrineUpgradeName = "NightmareFearNoHelpMetaUpgrade",
                Comparison = "<",
                Value = 1,
            },
        })
    else
        print("trying to missing encounter", encounterName, "for nightmare_fear_compat")
    end
end