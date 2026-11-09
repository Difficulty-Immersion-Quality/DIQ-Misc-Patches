local HEAVY_WEAPONS = {
    Melee = "HeavyWeaponMelee",
    Ammunition = "HeavyWeaponRanged",
}

local function addHeavyWeaponPassive()
    for _, name in pairs(Ext.Stats.GetStats("Weapon")) do
        local weapon = Ext.Stats.Get(name)
        local properties = weapon["Weapon Properties"]
        local passive
        for _, property in pairs(properties) do
            passive = HEAVY_WEAPONS[property]
            if passive then break end
        end
        if passive then
            for _, property in pairs(properties) do
                if property == "Heavy" then
                    weapon.PassivesOnEquip = (weapon.PassivesOnEquip ~= "" and weapon.PassivesOnEquip .. ";" or "") .. passive
                    break
                end
            end
        end
    end
end

Ext.Events.StatsLoaded:Subscribe(addHeavyWeaponPassive)