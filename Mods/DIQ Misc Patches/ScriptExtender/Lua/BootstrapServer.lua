Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(levelName, isEditorMode)
    for _, row in pairs(Osi.DB_Players:Get(nil)) do
        AddSpell(row[1], "Shout_DIQ_Utility_Spells_Container", 0, 0);
    end
end)

Ext.Osiris.RegisterListener("CharacterJoinedParty", 1, "after", function(charID)
    AddSpell(charID, "Shout_DIQ_Utility_Spells_Container", 0, 0);
end)

Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(level_name, is_editor_mode)
    for i, v in ipairs(Ext.Entity.GetAllEntitiesWithComponent("ServerCharacter")) do
        Ext.Timer.WaitFor(100, function()
            local charID = v.Uuid and v.Uuid.EntityUuid or v  -- Ensure we get the EntityUuid if available
            if type(charID) == "string" then
                Osi.AddPassive(charID, "EqLib_Uni1_Passive")
            else
                print("Invalid character ID for AddPassive:", charID)
            end
        end)
    end
end)

-- Bard scroll learning, thanks to Xarara for original code from Everyone Can Learn Scrolls
-- function OnStatsLoaded()
--    for _, resourceGuid in pairs(Ext.StaticData.GetAll("ClassDescription")) do
--        Ext.StaticData.Get("92cd50b6-eb1b-4824-8adb-853e90c34c90", "ClassDescription").CanLearnSpells = true
--    end
--end
--
--Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)

local targetCharacters = {
    ["S_Player_Wyll_c774d764-4a17-48dc-b470-32ace9ce447d"] = true,
    ["S_GOB_DrowCommander_25721313-0c15-4935-8176-9f134385451b"] = true
}

Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(level_name, is_editor_mode)
    for i, v in ipairs(Ext.Entity.GetAllEntitiesWithComponent("ServerCharacter")) do
        Ext.Timer.WaitFor(100, function()
            local charID = v.Uuid and v.Uuid.EntityUuid or v  -- Ensure we get the EntityUuid if available
            if type(charID) == "string" and targetCharacters[charID] then
                local flagName = "PassiveApplied_" .. charID  -- Unique flag for each character
                if not Osi.DB_GlobalFlagExists(flagName) then
                    Osi.AddPassive(charID, "Goon_Buff_Companion_Temporary")
                    Osi.DB_GlobalFlagSet(flagName)  -- Set the flag to indicate passive has been applied
                end
            end
        end)
    end
end)

Ext.Osiris.RegisterListener("CharacterJoinedParty", 1, "after", function(charID)
    if targetCharacters[charID] then
        local flagName = "PassiveApplied_" .. charID  -- Same flag used for tracking
        if Osi.DB_GlobalFlagExists(flagName) then
            Osi.RemovePassive(charID, "Goon_Buff_Companion_Temporary")
            Osi.DB_GlobalFlagClear(flagName)  -- Clear the flag to ensure no reapplication
        end
    end
end)
