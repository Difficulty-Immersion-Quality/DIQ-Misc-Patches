Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(levelName, isEditorMode)
    -- Ext.Utils.Print("[DIQ Misc Patches] LevelGameplayStarted: " .. tostring(levelName) .. ", isEditorMode: " .. tostring(isEditorMode))
    local modVars = Ext.Vars.GetModVariables(ModuleUUID)
    local assignedSpells = modVars.DIQMiscPatches_UtilitySpell or {}
    modVars.DIQMiscPatches_UtilitySpell = assignedSpells

    for _, row in pairs(Osi.DB_Players:Get(nil) or {}) do
        local charID = row[1]
        -- Ext.Utils.Print("[DIQ Misc Patches] Checking player: " .. tostring(charID))
        if type(charID) == "string" and not assignedSpells[charID] then
            -- Ext.Utils.Print("[DIQ Misc Patches] Adding spell to: " .. tostring(charID))
            Osi.AddSpell(charID, "Shout_DIQ_Utility_Spells_Container", 0, 0)
            assignedSpells[charID] = true
        else
            -- Ext.Utils.Print("[DIQ Misc Patches] Spell already assigned or invalid charID: " .. tostring(charID))
        end
    end
end)

Ext.Osiris.RegisterListener("CharacterJoinedParty", 1, "after", function(charID)
    -- Ext.Utils.Print("[DIQ Misc Patches] CharacterJoinedParty: " .. tostring(charID))
    local modVars = Ext.Vars.GetModVariables(ModuleUUID)
    local assignedSpells = modVars.DIQMiscPatches_UtilitySpell or {}
    modVars.DIQMiscPatches_UtilitySpell = assignedSpells

    if type(charID) == "string" and not assignedSpells[charID] then
        -- Ext.Utils.Print("[DIQ Misc Patches] Adding spell to: " .. tostring(charID))
        Osi.AddSpell(charID, "Shout_DIQ_Utility_Spells_Container", 0, 0)
        assignedSpells[charID] = true
    else
        -- Ext.Utils.Print("[DIQ Misc Patches] Spell already assigned or invalid charID: " .. tostring(charID))
    end
end)

-- TODO: Yeet when I do my own mobility overhaul
Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(level, _)
    -- Ext.Utils.Print("[DIQ Misc Patches] LevelGameplayStarted for mobility passive: " .. tostring(level))
    local modVars = Ext.Vars.GetModVariables(ModuleUUID)
    local assigned = modVars.DIQMiscPatches_MOPassive or {}
    modVars.DIQMiscPatches_MOPassive = assigned

    -- Unique players from DB_Players
    for i, row in ipairs(Osi.DB_Players:Get(nil) or {}) do
        local charID = row[1]
        -- Ext.Utils.Print("[DIQ Misc Patches] Checking player for passive: " .. tostring(charID))
        if type(charID) == "string" then
            if not assigned[charID] then
                -- Ext.Utils.Print("[DIQ Misc Patches] Assigning passive to player " .. tostring(charID))
                Osi.AddPassive(charID, "EqLib_Uni1_Passive")
                assigned[charID] = true
            else
                -- Ext.Utils.Print("[DIQ Misc Patches] Skipping already assigned player " .. tostring(charID))
            end
        else
            -- Ext.Utils.Print("[DIQ Misc Patches] Invalid character ID in DB_Players row " .. tostring(i))
        end
    end

    -- All ServerCharacters (excluding already assigned)
    for _, entity in ipairs(Ext.Entity.GetAllEntitiesWithComponent("ServerCharacter") or {}) do
        local charID = entity.Uuid and entity.Uuid.EntityUuid or entity
        -- Ext.Utils.Print("[DIQ Misc Patches] Checking ServerCharacter for passive: " .. tostring(charID))
        if type(charID) == "string" then
            if not assigned[charID] then
                -- Ext.Utils.Print("[DIQ Misc Patches] Assigning passive to ServerCharacter " .. tostring(charID))
                Osi.AddPassive(charID, "EqLib_Uni1_Passive")
                assigned[charID] = true
            else
                -- Ext.Utils.Print("[DIQ Misc Patches] Skipping already assigned ServerCharacter " .. tostring(charID))
            end
        else
            -- Ext.Utils.Print("[DIQ Misc Patches] Invalid ServerCharacter ID: " .. tostring(charID))
        end
    end
end)