Ext.Require("Globals.lua")
Ext.Require("Actions/_init.lua")
Ext.Require("Listeners/_init.lua")

-- Rebuke the Violent
local function GetEntityUuid(entity)
    if entity.ServerCharacter ~= nil then
        return entity.Uuid.EntityUuid
    end
end

local function GetEntityStatus(entity, statusId)
    if entity.ServerCharacter ~= nil then
        return entity.ServerCharacter.Character:GetStatus(statusId)
    elseif entity.ServerItem ~= nil then
        for _, esvStatus in pairs(entity.ServerItem.Item.StatusManager.Statuses) do
            if esvStatus.StatusId == statusId then
                return esvStatus
            end
        end
    end
end

-- Rebuke the Violent Redirected Damage
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
    if    status == "REBUKE_THE_VIOLENT_REDIRECT_FULL" then
        local damage = Osi.GetVarInteger(character,"CasterDealtDamage")
        local rtvstatus = "OATH_OF_REDEMPTION_DAMAGE_" .. damage
        Osi.ApplyStatus(character,rtvstatus,0.0,1,causee)
    elseif    status == "REBUKE_THE_VIOLENT_REDIRECT_HALF" then
		_D("Works")
        local damage = Osi.GetVarInteger(character,"CasterDealtDamage")
        damage = math.floor(damage / 2)
        local rtvstatus = "OATH_OF_REDEMPTION_DAMAGE_" .. damage
		Osi.ApplyStatus(character,rtvstatus,0.0,1,causee)
    end
end)

-- Aura of the Guardian and Emissary of Redemption
Ext.Events.DealDamage:Subscribe(function(e)
    if e.Target ~= nil and GetEntityStatus(e.Target,"AURA_OF_THE_GUARDIAN_TECHNICAL") ~= nil then
        local target = GetEntityUuid(e.Target)
        local beforehp = Osi.GetHitpoints(target)
        Osi.SetVarInteger(target,"AotG",beforehp)
    elseif e.Target ~= nil and e.Caster ~= nil and GetEntityStatus(e.Caster,"EMISSARY_OF_REDEMPTION") ~= nil then
        local target = GetEntityUuid(e.Target)
    end
end)

---@param e EsvLuaDealtDamageEvent
Ext.Events.DealtDamage:Subscribe(function(e)
    local target = e.Target.Uuid.EntityUuid
    if  e.Hit.HitWith ~= "FallDamage" and Osi.IsItem(target) == 0 and e.Caster ~= nil then
        local caster = GetEntityUuid(e.Caster)
        local damage = e.Result.Hit.TotalDamageDone
        local beforehp = Osi.GetVarInteger(target,"AotG")
        local hp = Osi.GetHitpoints(target)
        if target ~= nil and caster ~= nil then
            Osi.SetVarInteger(target,"TargetDealtDamage",damage)
            Osi.SetVarInteger(caster,"CasterDealtDamage",damage)
        end

        if Osi.HasPassive(target,"EmissaryOfRedemption") == 1 and Osi.HasActiveStatus(caster,"EMISSARY_OF_REDEMPTION") == 0 and e.DamageSums.TotalDamageDone == 0 then
            damage = math.floor(damage / 2)
            local rtvstatus = "OATH_OF_REDEMPTION_DAMAGE_" .. damage
            Osi.ApplyStatus(caster,rtvstatus,0.0,1,target)
        end

        if Osi.HasPassive(target,"EmissaryOfRedemption") == 1 and Osi.HasActiveStatus(caster,"EMISSARY_OF_REDEMPTION") == 0 and e.DamageSums.TotalDamageDone > 0 then
            local prevdamage = e.DamageSums.TotalDamageDone
            damage = damage - prevdamage
            damage = math.floor(damage / 2)
            local rtvstatus = "OATH_OF_REDEMPTION_DAMAGE_" .. damage
            Osi.ApplyStatus(caster,rtvstatus,0.0,1,target)
        end
        
        if beforehp ~= nil and damage > beforehp and Osi.HasActiveStatus(target,"AURA_OF_THE_GUARDIAN_TECHNICAL") == 1 then
            Osi.SetHitpoints(target,beforehp,"Guaranteed")
        elseif beforehp ~= nil and damage <= beforehp then
            hp = hp + damage
            Osi.SetHitpoints(target,hp,"Guaranteed")
        end
    end
end)