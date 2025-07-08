Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(levelName, isEditorMode)
    local modVars = Ext.Vars.GetModVariables(ModuleUUID)
    local assignedSpells = modVars.DIQMiscPatches_UtilitySpell or {}
    modVars.DIQMiscPatches_UtilitySpell = assignedSpells

    for _, row in pairs(Osi.DB_Players:Get(nil) or {}) do
        local charID = row[1]
        if type(charID) == "string" and not assignedSpells[charID] then
            AddSpell(charID, "Shout_DIQ_Utility_Spells_Container", 0, 0)
            assignedSpells[charID] = true
        end
    end
end)

Ext.Osiris.RegisterListener("CharacterJoinedParty", 1, "after", function(charID)
    local modVars = Ext.Vars.GetModVariables(ModuleUUID)
    local assignedSpells = modVars.DIQMiscPatches_UtilitySpell or {}
    modVars.DIQMiscPatches_UtilitySpell = assignedSpells

    if type(charID) == "string" and not assignedSpells[charID] then
        AddSpell(charID, "Shout_DIQ_Utility_Spells_Container", 0, 0)
        assignedSpells[charID] = true
    end
end)

-- TODO: Yeet when I do my own mobility overhaul
Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(level, _)
    local modVars = Ext.Vars.GetModVariables(ModuleUUID)
    local assigned = modVars.DIQMiscPatches_MOPassive or {}
    modVars.DIQMiscPatches_MOPassive = assigned

    -- print("[DEBUG] Checking DB_Players for passive assignment")

    -- Unique players from DB_Players
    for i, row in ipairs(Osi.DB_Players:Get(nil) or {}) do
        local charID = row[1]
        if type(charID) == "string" then
            if not assigned[charID] then
                -- print(string.format("[DEBUG] Assigning passive to player %s", charID))
                Osi.AddPassive(charID, "EqLib_Uni1_Passive")
                assigned[charID] = true
            else
                -- print(string.format("[DEBUG] Skipping already assigned player %s", charID))
            end
        else
            -- print("[DEBUG] Invalid character ID in DB_Players row", i)
        end
    end

    -- All ServerCharacters (excluding already assigned)
    for _, entity in ipairs(Ext.Entity.GetAllEntitiesWithComponent("ServerCharacter") or {}) do
        local charID = entity.Uuid and entity.Uuid.EntityUuid or entity
        if type(charID) == "string" then
            if not assigned[charID] then
                -- print(string.format("[DEBUG] Assigning passive to ServerCharacter %s", charID))
                Osi.AddPassive(charID, "EqLib_Uni1_Passive")
                assigned[charID] = true
            else
                -- print(string.format("[DEBUG] Skipping already assigned ServerCharacter %s", charID))
            end
        else
            -- print("[DEBUG] Invalid ServerCharacter ID:", charID)
        end
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