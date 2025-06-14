Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(levelName, isEditorMode)
    for _, row in pairs(Osi.DB_Players:Get(nil)) do
        AddSpell(row[1], "Shout_DIQ_Utility_Spells_Container", 0, 0);
    end
end)

Ext.Osiris.RegisterListener("CharacterJoinedParty", 1, "after", function(charID)
    AddSpell(charID, "Shout_DIQ_Utility_Spells_Container", 0, 0);
end)

-- TODO: Yeet when I do my own mobility overhaul
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