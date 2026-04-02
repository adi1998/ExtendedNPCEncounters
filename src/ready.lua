function mod.dump(o, depth)
    depth = depth or 0
    if type(o) == 'table' then
        local s = "\n" .. string.rep("\t", depth) .. '{\n'
        for k,v in pairs(o) do
            if type(k) ~= 'number' then k = '"'..k..'"' end
            s = s .. string.rep("\t",(depth+1)) .. '['..k..'] = ' .. mod.dump(v, depth + 1) .. ',\n'
        end
        return s .. string.rep("\t", depth) .. '}'
    elseif type(o) == "string" then
        return "\"" .. o .. "\""
    else
        return tostring(o)
    end
end

mod.RoomSets =
{
	F =
	{
		"F_Combat01",
		"F_Combat02",
		"F_Combat03",
		"F_Combat04",
		"F_Combat05",
		"F_Combat06",
		"F_Combat07",
		"F_Combat08",
		"F_Combat09",
		"F_Combat10",
		"F_Combat11",
		"F_Combat12",
		"F_Combat13",
		"F_Combat14",
		"F_Combat15",
		"F_Combat16",
		"F_Combat17",
		"F_Combat18",
		"F_Combat19",
		"F_Combat20",
		"F_Combat21",
		"F_Combat22",
	},

	G =
	{
		"G_Combat01",
		"G_Combat02",
		"G_Combat03",
		"G_Combat04",
		"G_Combat05",
		"G_Combat06",
		"G_Combat07",
		"G_Combat08",
		"G_Combat09",
		"G_Combat10",
		"G_Combat11",
		"G_Combat12",
		"G_Combat13",
		"G_Combat14",
		"G_Combat15",
		"G_Combat16",
		"G_Combat17",
		"G_Combat18",
		"G_Combat19",
		"G_Combat20",
	},

	H =
	{
		"H_Combat01",
		"H_Combat02",
		"H_Combat03",
		"H_Combat04",
		"H_Combat05",
		"H_Combat06",
		"H_Combat07",
		"H_Combat08",
		"H_Combat09",
		"H_Combat10",
		"H_Combat11",
		"H_Combat12",
		"H_Combat13",
		"H_Combat14",
		"H_Combat15",
	},

	I =
	{
		"I_Combat01",
		"I_Combat01",
		"I_Combat02",
		"I_Combat03",
		"I_Combat03",
		"I_Combat04",
		"I_Combat04",
		"I_Combat05",
		"I_Combat06",
		"I_Combat07",
		"I_Combat08",
		"I_Combat09",
		"I_Combat09",
		"I_Combat10",
		"I_Combat10",
		"I_Combat11",
		"I_Combat11",
		"I_Combat12",
		"I_Combat12",
		"I_Combat13",
		"I_Combat14",
		"I_Combat15",
		"I_Combat16",
		"I_Combat17",
		"I_Combat18",
		"I_Combat18",
		"I_Combat19",
		"I_Combat20",
		"I_Combat21",
		"I_Combat21",
		"I_Combat22",
		"I_Combat22",
		"I_Combat23",
		"I_Combat24",
	},

	N = {
		"N_Combat01",
		"N_Combat02",
		"N_Combat03",
		"N_Combat04",
		"N_Combat05",
		"N_Combat06",
		"N_Combat07",
		"N_Combat08",
		"N_Combat09",
		"N_Combat10",
		"N_Combat11",
		"N_Combat12",
		"N_Combat13",
		"N_Combat14",
		"N_Combat15",
		"N_Combat16",
		"N_Combat17",
		"N_Combat18",
		"N_Combat19",
		"N_Combat20",
		"N_Combat21",
		"N_Combat22",
		"N_Combat23",
	},

	N_SubRooms = {
		"N_Sub01",
		"N_Sub02",
		"N_Sub03",
		"N_Sub04",
		"N_Sub05",
		"N_Sub06",
		"N_Sub07",
		"N_Sub08",
		"N_Sub09",
		"N_Sub10",
		"N_Sub11",
		"N_Sub12",
		"N_Sub13",
		"N_Sub14",
		"N_Sub15",
	},

	O =
	{
		"O_Combat01",
		"O_Combat02",
		"O_Combat03",
		"O_Combat04",
		"O_Combat05",
		"O_Combat06",
		"O_Combat07",
		"O_Combat08",
		"O_Combat09",
		"O_Combat10",
		"O_Combat11",
		"O_Combat12",
		"O_Combat13", -- Backup if there is nothing eligible before PreBoss
		"O_Combat14",
		"O_Combat15",
	},

	P =
	{
		"P_Combat01",
		"P_Combat02",
		"P_Combat03",
		"P_Combat04",
		"P_Combat05",
		"P_Combat06",
		"P_Combat07",
		"P_Combat08",
		"P_Combat09",
		"P_Combat10",
		"P_Combat11",
		"P_Combat12",
		"P_Combat13",
		"P_Combat14",
		"P_Combat15",
		"P_Combat16",
		"P_Combat17",
		"P_Combat18",
		"P_Combat19",
	},
}

mod.ZagRoomSets = {
	Tartarus = {
		"A_Combat01",
		"A_Combat02",
		"A_Combat03",
		"A_Combat04",
		"A_Combat05",
		"A_Combat06",
		"A_Combat07",
		"A_Combat08A",
		"A_Combat08B",
		"A_Combat09",
		"A_Combat10",
		"A_Combat11",
		"A_Combat12",
		"A_Combat13",
		"A_Combat14",
		"A_Combat15",
		"A_Combat16",
		"A_Combat17",
		"A_Combat18",
		"A_Combat19",
		"A_Combat20",
		"A_Combat21",
		"A_Combat24",
	},
	Asphodel = {
		"X_Combat01",
		"X_Combat02",
		"X_Combat03",
		"X_Combat04",
		"X_Combat05",
		"X_Combat06",
		"X_Combat07",
		"X_Combat08",
		"X_Combat09",
		"X_Combat10",
		"X_Combat21",
		"X_Combat22",
	},
	Elysium = {
		"Y_Combat01",
		"Y_Combat02",
		"Y_Combat03",
		"Y_Combat04",
		"Y_Combat05",
		"Y_Combat06",
		"Y_Combat08",
		"Y_Combat09",
		"Y_Combat10",
		"Y_Combat11",
		"Y_Combat12",
		"Y_Combat13",
		"Y_Combat14",
	},
}

if rom.mods["NikkelM-Zagreus_Journey"] and rom.mods["NikkelM-Zagreus_Journey"].config and rom.mods["NikkelM-Zagreus_Journey"].config.enabled then
	game.OverwriteTableKeys(mod.RoomSets, mod.ZagRoomSets)
end

function mod.SetUnitPostCombatAI(eventSource)
    local currentEncounter = eventSource
    print("SetUnitPostCombatAI", mod.dump(eventSource))
    if currentEncounter[_PLUGIN.guid .. "FieldUnit"] then
        local enemy = currentEncounter[_PLUGIN.guid .. "FieldUnit"]
        enemy.AIDisabled = true
        print("disabled AI", enemy.Name)
        -- game.wait(0.01)
        if enemy.PostCombatAI then
            print("forcing PostCombatAI", enemy.PostCombatAI)
            game.SetAI( enemy.PostCombatAI, enemy )
        end
    end
end

modutil.mod.Path.Wrap("SetupUnit", function (base, unit, currentRun, args)
    base(unit, currentRun, args)
    if game.CurrentRun.CurrentRoom and game.CurrentRun.CurrentRoom[_PLUGIN.guid .. "CurrentCageEncounter"] ~= nil then
		local encounterData = game.CurrentRun.CurrentRoom[_PLUGIN.guid .. "CurrentCageEncounter"]
		if encounterData.OnSpawnFunctionName ~= nil then
            print("calling", encounterData.OnSpawnFunctionName)
			game.CallFunctionName( encounterData.OnSpawnFunctionName, unit, encounterData )
		end
	end
end)

modutil.mod.Path.Wrap("StartFieldsEncounter", function (base, rewardCage, args)
    game.CurrentRun.CurrentRoom[_PLUGIN.guid .. "CurrentCageEncounter"] = rewardCage.Encounter
    base(rewardCage, args)
end)

modutil.mod.Path.Wrap("RecordEncounter", function (base, run, encounter)
	base(run,encounter)

	local biomeHFieldEncounters = {
		"IcarusCombatH",
		"HeraclesCombatH",
		"ArtemisCombatH",
		"NemesisCombatH"
	}

	if game.Contains(biomeHFieldEncounters, encounter.Name) then
		game.CurrentRun.CurrentRoom[_PLUGIN.guid .. "NextRoomCageFieldEncounters"] = true
	end
end)

table.insert(mod.PostSetupRunDataFuncs, function ()
	for _, roomName in ipairs(mod.RoomSets["I"]) do
        local roomData = game.RoomData[roomName]
		for _ = 1, 4 do
			if game.Contains(roomData.LegalEncounters, "GeneratedI") then
				table.insert(roomData.LegalEncounters, "GeneratedI")
				table.insert(roomData.LegalEncounters, "GeneratedI_GoalReward")
			elseif game.Contains(roomData.LegalEncounters, "GeneratedI_Small") then
				table.insert(roomData.LegalEncounters, "GeneratedI_Small")
				table.insert(roomData.LegalEncounters, "GeneratedI_Small_GoalReward")
			end
		end
	end
end)

function mod.clampweight(weight)
	if type(weight) ~= "number" or (weight<1 and weight>20) then
		if weight < 1 then
			weight = 1
		elseif weight > 20 then
			weight = 20
		end
	end
	return weight
end