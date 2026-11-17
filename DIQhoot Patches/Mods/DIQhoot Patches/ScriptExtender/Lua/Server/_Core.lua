-- ==================================== Locals ====================================

local UTILITY_SPELL = "Shout_DIQ_Utility_Spells_Container"
local MOBILITY_PASSIVE = "EqLib_Uni1_Passive" -- TODO: Yeet when I do my own mobility overhaul

local legacyEntriesMigrated = {}
local mobilityPassiveAvailable

local function isMobilityPassiveAvailable()
    if mobilityPassiveAvailable == nil then
        mobilityPassiveAvailable = Ext.Stats.Get(MOBILITY_PASSIVE, nil, false) ~= nil
    end
    return mobilityPassiveAvailable
end

-- ==================================== Legacy vars handling ====================================
-- Older saves keyed some entries by full Osiris GUIDSTRINGs (Name_uuid) instead of bare UUIDs.

local function migrateLegacyEntries(varName, assigned)
    if legacyEntriesMigrated[varName] then return end

    local legacyIDs = {}
    for charID in pairs(assigned) do
        if charID ~= charID:sub(-36) then
            table.insert(legacyIDs, charID)
        end
    end

    for _, legacyID in ipairs(legacyIDs) do
        local charID = legacyID:sub(-36)
        assigned[charID] = assigned[charID] or assigned[legacyID]
        assigned[legacyID] = nil
    end

    legacyEntriesMigrated[varName] = true
end

local function getAssigned(varName)
    local modVars = Ext.Vars.GetModVariables(ModuleUUID)
    local assigned = modVars[varName] or {}
    modVars[varName] = assigned
    migrateLegacyEntries(varName, assigned)
    return assigned
end

-- ==================================== Give stuff functions ====================================

local function ApplyUtilitySpell(charID, assigned)
    charID = charID:sub(-36)
    -- Ext.Utils.Print("[DIQ Misc Patches] Checking player: " .. tostring(charID))
    if not assigned[charID] then
        -- Ext.Utils.Print("[DIQ Misc Patches] Adding spell to: " .. tostring(charID))
        if Osi.HasSpell(charID, UTILITY_SPELL) == 0 then
            Osi.AddSpell(charID, UTILITY_SPELL, 0, 0)
        end
        assigned[charID] = true
    else
        -- Ext.Utils.Print("[DIQ Misc Patches] Spell already assigned or invalid charID: " .. tostring(charID))
    end
end

local function ApplyMobilityPassive(charID, assigned)
    charID = charID:sub(-36)
    -- Ext.Utils.Print("[DIQ Misc Patches] Checking player for passive: " .. tostring(charID))
    if not assigned[charID] then
        -- Ext.Utils.Print("[DIQ Misc Patches] Assigning passive to player " .. tostring(charID))
        if Osi.HasPassive(charID, MOBILITY_PASSIVE) == 0 then
            Osi.AddPassive(charID, MOBILITY_PASSIVE)
        end
        assigned[charID] = true
    else
        -- Ext.Utils.Print("[DIQ Misc Patches] Skipping already assigned player " .. tostring(charID))
    end
end

-- ==================================== Listeners ====================================

Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(levelName, isEditorMode)
    -- Ext.Utils.Print("[DIQ Misc Patches] LevelGameplayStarted: " .. tostring(levelName) .. ", isEditorMode: " .. tostring(isEditorMode))
    if Osi.IsCharacterCreationLevel(levelName) == 1 then return end

    -- Fetch each ModVar table once per level load, not once per character
    local assignedSpells = getAssigned("DIQMiscPatches_UtilitySpell")
    local passiveAvailable = isMobilityPassiveAvailable()
    local assignedPassives = passiveAvailable and getAssigned("DIQMiscPatches_MOPassive")
    local processed = {}

    for _, row in ipairs(Osi.DB_Players:Get(nil) or {}) do
        local charID = row[1]:sub(-36)
        processed[charID] = true
        ApplyUtilitySpell(charID, assignedSpells)
        if passiveAvailable then
            ApplyMobilityPassive(charID, assignedPassives)
        end
    end

    if not passiveAvailable then return end

    -- All other ServerCharacters (players already handled above)
    for _, entity in ipairs(Ext.Entity.GetAllEntitiesWithComponent("ServerCharacter") or {}) do
        local charID = entity.Uuid and entity.Uuid.EntityUuid
        -- Ext.Utils.Print("[DIQ Misc Patches] Checking ServerCharacter for passive: " .. tostring(charID))
        if charID and not processed[charID] then
            ApplyMobilityPassive(charID, assignedPassives)
        end
    end
end)

Ext.Osiris.RegisterListener("DB_Players", 1, "after", function(charID)
    -- Ext.Utils.Print("[DIQ Misc Patches] CharacterJoinedParty: " .. tostring(charID))
    ApplyUtilitySpell(charID, getAssigned("DIQMiscPatches_UtilitySpell"))
end)
