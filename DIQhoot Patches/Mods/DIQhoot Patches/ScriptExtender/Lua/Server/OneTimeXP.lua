local XP_AMOUNT = 2

Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(levelName, isEditorMode)
    if Osi.IsCharacterCreationLevel(levelName) == 1 then return end

    local modVars = Ext.Vars.GetModVariables(ModuleUUID)
    if modVars.DIQMiscPatches_OneTimeXP then return end

    local host = Osi.GetHostCharacter()
    if host == nil then return end

    Osi.AddExplorationExperience(host, XP_AMOUNT)
    modVars.DIQMiscPatches_OneTimeXP = true
    Ext.Utils.Print("[DIQ Misc Patches] Granted one-time XP: " .. tostring(XP_AMOUNT))
end)
