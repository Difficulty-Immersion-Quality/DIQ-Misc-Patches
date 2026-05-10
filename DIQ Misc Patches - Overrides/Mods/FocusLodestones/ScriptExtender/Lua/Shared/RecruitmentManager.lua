-- Bug Fix: Patched to prevent them working on combat, per the description and all that is holy.

---@class FLRecruitmentManager
RecruitmentManager = _Class:Create("FLRecruitmentManager")

---@param entity EntityHandle
---@return boolean
function RecruitmentManager:IsIncapacitated(entity)
    return Osi.HasAppliedStatusOfType(entity.Uuid.EntityUuid, "INCAPACITATED") == 1 or Osi.IsDead(entity.Uuid.EntityUuid) == 1
end

-- DIQ Misc Patches start
---@param entity EntityHandle
---@return boolean
function RecruitmentManager:IsInCombat(entity)
    return Osi.IsInCombat(entity.Uuid.EntityUuid) == 1
end
-- DIQ Misc Patches end

---@param dismisser EntityHandle
---@param target EntityHandle
---@return boolean
function RecruitmentManager:CanDismiss(dismisser, target)
    local isAvatar = dismisser.Avatar ~= nil
    local isSameUser = dismisser.UserReservedFor ~= nil and target.UserReservedFor ~= nil and dismisser.UserReservedFor.UserID == target.UserReservedFor.UserID
    local IsIncapacitated = self:IsIncapacitated(dismisser) or self:IsIncapacitated(target)
-- DIQ Misc Patches start
    local IsInCombat = self:IsInCombat(dismisser) or self:IsInCombat(target)
-- DIQ Misc Patches end

    local dismisserUuid = dismisser.Uuid.EntityUuid
    local targetUuid = target.Uuid.EntityUuid
    local dismissBlocked =
    next(Osi.DB_InDangerZone:Get(dismisserUuid, nil))
    or next(Osi.DB_InDangerZone:Get(targetUuid, nil))
    or next(Osi.DB_PartyDialogSuppressed:Get(targetUuid, nil))
    or next(Osi.DB_FastTravelBlock_BlockedZone_StatusSet:Get(dismisserUuid))
    or next(Osi.DB_FastTravelBlock_BlockedZone_StatusSet:Get(targetUuid))
    or next(Osi.DB_FastTravelBlock_CantMove_StatusSet:Get(dismisserUuid))
    or next(Osi.DB_FastTravelBlock_CantMove_StatusSet:Get(targetUuid))
    or next(Osi.DB_FastTravelBlock_Arrested_StatusSet:Get(dismisserUuid))
    or next(Osi.DB_FastTravelBlock_Arrested_StatusSet:Get(targetUuid))
    or next(Osi.DB_FastTravelBlock_CampNightMode_StatusSet:Get(dismisserUuid))
    or next(Osi.DB_FastTravelBlock_CampNightMode_StatusSet:Get(targetUuid))
    or next(Osi.DB_FastTravelBlock_FugitiveInPrison_StatusSet:Get(dismisserUuid, nil))
    or next(Osi.DB_FastTravelBlock_FugitiveInPrison_StatusSet:Get(targetUuid, nil))

-- DIQ Misc Patches start
    -- return isAvatar and isSameUser and not IsIncapacitated and not dismissBlocked
    return isAvatar and isSameUser and not IsIncapacitated and not dismissBlocked and not IsInCombat
-- DIQ Misc Patches start
end

---@param recruiter EntityHandle
---@param target EntityHandle
---@return boolean
function RecruitmentManager:CanRecruit(recruiter, target)
    local IsIncapacitated = self:IsIncapacitated(recruiter) or self:IsIncapacitated(target)
-- DIQ Misc Patches start
    local IsInCombat = self:IsInCombat(recruiter) or self:IsInCombat(target)
-- DIQ Misc Patches end

    local recruiterUuid = recruiter.Uuid.EntityUuid
    local targetUuid = target.Uuid.EntityUuid
    local dismissBlocked =
    next(Osi.DB_InDangerZone:Get(recruiterUuid, nil))
    or next(Osi.DB_InDangerZone:Get(targetUuid, nil))
    or next(Osi.DB_FastTravelBlock_BlockedZone_StatusSet:Get(recruiterUuid))
    or next(Osi.DB_FastTravelBlock_BlockedZone_StatusSet:Get(targetUuid))
    or next(Osi.DB_FastTravelBlock_CantMove_StatusSet:Get(recruiterUuid))
    or next(Osi.DB_FastTravelBlock_CantMove_StatusSet:Get(targetUuid))
    or next(Osi.DB_FastTravelBlock_Arrested_StatusSet:Get(recruiterUuid))
    or next(Osi.DB_FastTravelBlock_Arrested_StatusSet:Get(targetUuid))
    or next(Osi.DB_FastTravelBlock_CampNightMode_StatusSet:Get(recruiterUuid))
    or next(Osi.DB_FastTravelBlock_CampNightMode_StatusSet:Get(targetUuid))
    or next(Osi.DB_FastTravelBlock_FugitiveInPrison_StatusSet:Get(recruiterUuid, nil))
    or next(Osi.DB_FastTravelBlock_FugitiveInPrison_StatusSet:Get(targetUuid, nil))

-- DIQ Misc Patches start
    -- return not IsIncapacitated and not dismissBlocked
    return not IsIncapacitated and not dismissBlocked and not IsInCombat
-- DIQ Misc Patches end
end

---@param dismisser EntityHandle
---@param target EntityHandle
function RecruitmentManager:Dismiss(dismisser, target)
    if self:CanDismiss(dismisser, target) then
        local targetUuid = target.Uuid.EntityUuid
        local dismisserUuid = dismisser.Uuid.EntityUuid
        Osi.PROC_GLO_PartyMembers_Remove(targetUuid, 1)
        Helpers.Timer:OnTicks(3, function()
            if Osi.IsInPartyWith(targetUuid, dismisserUuid) == 0 then
                local stone = LodestoneManager:GetStoneForCharacter(targetUuid)
                if stone ~= nil then
                    LodestoneManager:UpdateLoca(stone.Data.StoneRootTemplate)
                end
            end
        end)
    end
end

---@param recruiter EntityHandle
---@param target EntityHandle
function RecruitmentManager:Recruit(recruiter, target)
    if self:CanRecruit(recruiter, target) then
        local targetUuid = string.format("%s_%s", target.ServerCharacter.Template.Name, target.Uuid.EntityUuid)
        local recruiterUuid = string.format("%s_%s", recruiter.ServerCharacter.Template.Name, recruiter.Uuid.EntityUuid)
        Osi.PROC_GLO_PartyMembers_CheckAdd(targetUuid, recruiterUuid)
        Helpers.Timer:OnTicks(3, function()
            if Osi.IsInPartyWith(targetUuid, recruiterUuid) == 1 and not next(Osi.DB_InCamp:Get(recruiterUuid)) then
                Osi.TeleportTo(targetUuid, recruiterUuid)
                Osi.AttachToPartyGroup(targetUuid, recruiterUuid)
                local stone = LodestoneManager:GetStoneForCharacter(targetUuid)
                if stone ~= nil then
                    LodestoneManager:UpdateLoca(stone.Data.StoneRootTemplate)
                end
            end
        end)
    end
end