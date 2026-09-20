-- Mega thanks to Sailor Cat for this!!!
-- For use with Early Access Nautiloid.

local membrane = "TOOL_Ladder_MF_Membrane_3H_A_002_a8e40469-0efa-4077-b125-47058511202e";
local membrane_icd = false;
local function InsaneintheMembrane(charID)
    Ext.Timer.WaitFor(10000, function()
        if membrane_icd == true then
            membrane_icd = false;
            if Exists(membrane) == 1 and GetDistanceTo(GetHostCharacter(), membrane) < 20 then
                membrane_icd = true;
                Osi.PROC_TryStartAD("PLA_TavernInvestigation_PAD_OtherWay_3f62b28c-2ba3-4246-d5ba-f954f30236a7", charID);
                InsaneintheMembrane(charID);
            end
        end
    end)
end

template_listener = Ext.Osiris.RegisterListener("TemplateUseStarted",3,"after", function(charID, itemTemplate, item2)
    if not membrane_icd and item2 == membrane and IsPlayer(charID) == 1 then
        membrane_icd = true;
        Ext.Timer.WaitFor(3000, function()
            Osi.PROC_TryStartAD("PLA_TavernInvestigation_PAD_OtherWay_3f62b28c-2ba3-4246-d5ba-f954f30236a7", charID);
            InsaneintheMembrane(charID);
        end)
    end
end)

level_listener = Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(levelName, isEditorMode)
    if levelName ~= "TUT_Avernus_C" and IsCharacterCreationLevel(levelName) == 0 then
        Ext.Osiris.UnregisterListener(template_listener);
        Ext.Osiris.UnregisterListener(level_listener);
    end
end)