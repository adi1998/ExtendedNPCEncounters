local artemisEncounters = {
    H = {
        ArtemisCombatH = {
            InheritFrom = { "BaseArtemisCombat", "GeneratedH" },
            DifficultyModifier = 170,
            CanEncounterSkip = false,
            GameStateRequirements =
            {
                {
                    PathTrue = { "GameState", "EncountersCompletedCache", "ArtemisCombatIntro" },
                },
                {
                    PathFalse = { "CurrentRun", "UseRecord", "NPC_Artemis_Field_01" },
                },
                {
                    Path = { "CurrentRun", "BiomeDepthCache" },
                    Comparison = ">=",
                    Value = 2,
                },
                {
                    PathFalse = { "CurrentRun", "CurrentRoom", _PLUGIN.guid .. "NextRoomCageFieldEncounters"},
                },
                {
                    Path = { "CurrentRun", "EncountersOccurredCache" },
                    HasNone = { "ArtemisCombatF", "ArtemisCombatG", "ArtemisCombatG2", "ArtemisCombatN", "ArtemisCombatN2",
                        "ArtemisCombatIntro", "ArtemisCombatH", "ArtemisCombatI", "ArtemisCombatP" }
                },
                {
                    PathTrue = {_PLUGIN.guid, "config", "artemis", "fields"}
                },
                NamedRequirements = { "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "SurfaceRouteLockedByTyphonKill" },
            },
            UnthreadedEvents = {
                { FunctionName = "BeginArtemisEncounter" },
                { FunctionName = "HandleEnemySpawns" },
                { FunctionName = "CheckForAllEnemiesDead" },
                { FunctionName = "PostCombatAudio" },
                -- { FunctionName = "SpawnRoomReward" },
                { FunctionName = _PLUGIN.guid .. "." .. "SetUnitPostCombatAI" }
            },
            WaveStartUnthreadedEvents =
            {
                { FunctionName = _PLUGIN.guid .. "." .. "CheckArtemisSpawn", Args = { FirstWaveArtemisChance = 0.5, WaveSpawnDelay = 1.8 } },
            },
        },
    },

    I = {
        ArtemisCombatI = {
            InheritFrom = { "BaseArtemisCombat", "GeneratedI" },
            DifficultyModifier = 200,
            CanEncounterSkip = false,
            GameStateRequirements = {
				Append = true,
				{
                    PathTrue = {_PLUGIN.guid, "config", "artemis", "tartarus"}
                }
			}
        },
    },

    O = {
        ArtemisCombatO = {
            InheritFrom = { "BaseArtemisCombat", "GeneratedO" },
            DifficultyModifier = 180,
            CanEncounterSkip = false,
            GameStateRequirements =
            {
                {
                    PathTrue = { "GameState", "EncountersCompletedCache", "ArtemisCombatIntro" },
                },
                {
                    PathFalse = { "CurrentRun", "UseRecord", "NPC_Artemis_Field_01" },
                },
                {
                    Path = { "CurrentRun", "BiomeDepthCache" },
                    Comparison = ">=",
                    Value = 3,
                },
                {
                    PathTrue = {_PLUGIN.guid, "config", "artemis", "thessaly"}
                },
                NamedRequirements = { "NoRecentFieldNPCEncounter" },
                NamedRequirementsFalse = { "StandardPackageBountyActive", "SurfaceRouteLockedByTyphonKill" },
            },
            UnthreadedEvents = {
                { FunctionName = "ShipsEncounterSetup" },
                { FunctionName = "MultipleEncounterStartPresentation" },
                { FunctionName = "BeginArtemisEncounter" },
                { FunctionName = "HandleEnemySpawns" },
                { FunctionName = "CheckForAllEnemiesDead" },
                { FunctionName = "PostCombatAudio" },
                { FunctionName = "SpawnRoomReward" },
                { FunctionName = "WaitForNextEncounterReady" },
            },
        },
    },

    P = {
        ArtemisCombatP = {
            InheritFrom = { "BaseArtemisCombat", "GeneratedP" },
            DifficultyModifier = 250,
            BlockMultipleEncounters = true,
            CanEncounterSkip = false,
            GameStateRequirements = {
				Append = true,
				{
                    PathTrue = {_PLUGIN.guid, "config", "artemis", "olympus"}
                }
			}
        },
    },
}

local weight = config.artemis.weight
weight = mod.clampweight(weight)

for roomSet, encounterTable in pairs(artemisEncounters) do
    for _, roomName in ipairs(mod.RoomSets[roomSet]) do
        local roomData = game.RoomData[roomName]
        for encounterName, encounterData in pairs(encounterTable) do
            game.EncounterData[encounterName] = encounterData
            table.insert(mod.NewNPCEncounters, encounterName)
            for i = 1, weight do
                if roomSet == "H" then
                    table.insert(game.ObstacleData.FieldsRewardCage.LegalEncounters, encounterName)
                elseif roomSet == "O" then
                    if roomData.MultipleEncountersData then
                        table.insert(roomData.MultipleEncountersData[2].LegalEncounters, encounterName)
                        table.insert(roomData.MultipleEncountersData[3].LegalEncounters, encounterName)
                    end
                else
                    table.insert(roomData.LegalEncounters, encounterName)
                    if roomData.MultipleEncountersData then
                        table.insert(roomData.MultipleEncountersData[1].LegalEncounters, encounterName)
                    end
                end
            end
            table.insert(game.NamedRequirementsData.NoRecentFieldNPCEncounter[1].TableValuesToCount, encounterName)
        end
    end
end

function mod.CheckArtemisSpawn(encounter, args)
	if encounter.ArtemisId ~= nil then
		return
	end

	args = args or {}

	if encounter.WaveCount == 1 or encounter.CurrentWaveNum > 1 or game.RandomChance(args.FirstWaveArtemisChance or 0.1) then
		mod.HandleArtemisSpawn( encounter, args )
	end
end

function mod.HandleArtemisSpawn(eventSource, args)
    local currentRun = game.CurrentRun
	local currentRoom = game.CurrentRun.CurrentRoom
	local currentEncounter = eventSource

	local newUnit = game.DeepCopyTable( game.EnemyData.NPC_Artemis_Field_01 )
	local spawnPointId = game.GetRandomValue( game.GetIds({ Name = "ArtemisSpawnPoints" }) or game.GetIdsByType({ Name = "CameraClamp" }) )
	if game.RoomData[currentRoom.Name].ArtemisUseHeroStart then
		spawnPointId = game.GetRandomValue( game.GetIdsByType({ Name = "HeroStart" }) )
	end
	spawnPointId = spawnPointId or currentRun.Hero.ObjectId
	newUnit.ObjectId = game.SpawnUnit({ Name = "NPC_Artemis_Field_01", Group = "Standing", DestinationId = spawnPointId })

	game.SetAlpha({ Id = newUnit.ObjectId, Fraction = 0, Duration = 0 })
	game.SetAnimation({ DestinationId = newUnit.ObjectId, Name = "Artemis_Invisible" })
	game.SetThingProperty({ Property = "Graphic", Value = "Artemis_Invisible", DestinationId = newUnit.ObjectId })

	currentEncounter.ArtemisId = newUnit.ObjectId

	game.SetupUnit( newUnit, game.CurrentRun, { IgnoreAI = true, IgnorePackages = true } )
	game.UseableOff({ Id = newUnit.ObjectId })
	game.MapState.RoomRequiredObjects[newUnit.ObjectId] = newUnit
    currentEncounter[_PLUGIN.guid .. "FieldUnit"] = newUnit
	game.thread( game.ArtemisPreSpawnPresentation, eventSource )

	game.thread(game.SetupAI, newUnit )

	game.wait(args.WaveSpawnDelay, currentEncounter.SpawnThreadName)
end