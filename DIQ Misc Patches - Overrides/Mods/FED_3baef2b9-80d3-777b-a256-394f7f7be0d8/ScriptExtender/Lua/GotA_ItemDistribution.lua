PersistentVars = {
    
}

-- Register the mod variable for tracking distributed items 
Ext.Vars.RegisterModVariable(ModuleUUID, "GotA_DistributedItems", {})   

local function OnSessionLoaded()    
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).GotA_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to        
    local itemArray = {
        --ACT 1
        {
            ItemName = "Cloak of the Unseen Absolute",
            ItemUUID = "c610d757-d641-4b05-aaaf-55b45fc54063",
            EnemyName = "Grat the Trader",
            EnemyMapKey = "3c9f9d17-835c-46bf-929d-240e3b4adb55",
            Equip = false
        },
        {
            ItemName = "The Absolutes Embrace - Amulet",
            ItemUUID = "a0f7b95c-1a25-4f36-be8b-671299aa20a1",
            EnemyName = "Grat the Trader",
            EnemyMapKey = "3c9f9d17-835c-46bf-929d-240e3b4adb55",
            Equip = false
        },
        {
            ItemName = "The Absolutes Grasp - Ring",
            ItemUUID = "4e0306ae-6869-47e9-bce7-86331670f0c8",
            EnemyName = "Glomp the Looter",
            EnemyMapKey = "5e3467b4-9186-4ab2-81b8-cf379bcbd982",
            Equip = false
        },
        {
            ItemName = "The Absolutes Gaze - Helmet",
            ItemUUID = "519fa1ba-3328-474d-a9bf-838d1b247e55",
            EnemyName = "Roah Moonglow",
            EnemyMapKey = "646936f3-8d8d-484e-9361-cd1ed484c615",
            Equip = false
        },
        {
            ItemName = "Absolutes Echo - Light Armor",
            ItemUUID = "0073b48a-d817-4d13-939b-c21d20a47750",
            EnemyName = "Flind - Gnoll Warlord",
            EnemyMapKey = "34464430-fed8-4f50-86d5-bd35846920a0",
            Equip = false
        },
        {
            ItemName = "Absolutes Scourge - Clothing Armor",
            ItemUUID = "587ff7db-d730-4c93-bd4d-a60ea883f9a8",
            EnemyName = "True Soul Edowin",
            EnemyMapKey = "21507c79-dfea-421a-b149-4b5646d3941d",
            Equip = false
        },
        {
            ItemName = "Absolutes Benediction - Cleric Shield",
            ItemUUID = "725f83cb-c522-4222-abf1-c3ce670258b0",
            EnemyName = "Adept Merim",
            EnemyMapKey = "2ab30cea-d3f1-4aa4-8c83-b8b700ef0048",
            Equip = false
        },
        {
            ItemName = "Absolutes Touch - Monk Gloves",
            ItemUUID = "fc1e1168-8718-4b9e-886b-15b9c968ef65",
            EnemyName = "Drenn - Goblin killed by Ketheric",
            EnemyMapKey = "2c0816da-ad54-4813-94ce-92440223b49c",
            Equip = false
        },
        {
            ItemName = "Absolutes Trickery - Bard Violin",
            ItemUUID = "375aaf47-de10-40c6-b751-783e2cd0a2c3",
            EnemyName = "True Soul Korliss - Mastiff Poacher",
            EnemyMapKey = "ce1526d5-c9fa-49f7-80f9-b1ac15252968",
            Equip = false
        },
        {
            ItemName = "The Absolutes Hex - Warlock Dagger",
            ItemUUID = "6d96356f-6a42-4a68-b842-78f889c2fcf2",
            EnemyName = "Z'rell",
            EnemyMapKey = "8e75eb3b-7551-485e-8f98-2bf2e51d3e84",
            Equip = true
        },
        {
            ItemName = "Absolutes Dominion - Druid Staff",
            ItemUUID = "9d92fb17-b86e-45b5-8c12-cd7cced7f145",
            EnemyName = "Morgue Hidden Chest - Same location as Strange Tendril Amulet",
            EnemyMapKey = "0a9ee94b-4754-4b66-944a-f046a3e5e450",
            Equip = false
        },
        {
            ItemName = "Whispers of the Absolute - Rogue Dagger",
            ItemUUID = "bae1d215-82dd-4497-ae19-d5af3ec692d0",
            EnemyName = "Araj Oblodra",
            EnemyMapKey = "511c9413-25fe-449c-a81d-4b09bc20745a",
            Equip = false
        },
        {
            ItemName = "Absolutes Judgment - Paladin Greatsword",
            ItemUUID = "1f4f5845-48e0-437a-9088-b30dd932e126",
            EnemyName = "Malik",
            EnemyMapKey = "b302d246-59ff-48ee-8247-0e3bcfd4b38e",
            Equip = true
        },
        {
            ItemName = "The Absolutes Rage - Barbarian Greataxe",
            ItemUUID = "4e33d534-9880-42a4-895f-2dccdaa9abc1",
            EnemyName = "Talli",
            EnemyMapKey = "f769815c-d437-4a45-9ae4-aebd53ec8f7c",
            Equip = false
        },
        {
            ItemName = "The Absolutes Focus - Wizard Staff",
            ItemUUID = "9700a9fe-0323-4e3c-927f-4ec44c4dbf38",
            EnemyName = "Hoarding Merregon",
            EnemyMapKey = "fbbf364f-5da0-4d60-86e4-ecf68da8fb25",
            Equip = false
        },
        {
            ItemName = "The Absolutes Spark - Sorcerer Staff",
            ItemUUID = "bffe0d61-f062-4749-a850-017ce993b74a",
            EnemyName = "Lann Tarv",
            EnemyMapKey = "8cb1cace-ef98-4387-8b76-2e8efc5cfe89",
            Equip = false
        },
        {
            ItemName = "Absolutes Resonance - Ranger Longbow",
            ItemUUID = "3163417b-404b-40a0-94d7-488c743ab0b3",
            EnemyName = "Linsella",
            EnemyMapKey = "627dfc1c-56e1-4e56-9920-56e381e72c53",
            Equip = true
        },
        {
            ItemName = "Absolutes Courage - Fighter Longsword",
            ItemUUID = "832cf34e-11a1-4d9a-a1cc-86aca83e365e",
            EnemyName = "Drops from Hollow Armour - Same location as Protective Plate",
            EnemyMapKey = "950ba3d5-6871-4be5-9e1a-38619c044f50",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
		--ACT 3
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
		{
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "",
            EnemyMapKey = "",
            Equip = false
        }

        --{
        --    ItemName = "xxx",
        --    ItemUUID = "xxx",
        --    EnemyName = "xxx",
        --    EnemyMapKey = "xxx",
        --    Equip = true
        --}
    }
    local json = Ext.Json.Stringify(itemArray)
    -- _P(json)
    local itemsToAdd = Ext.Json.Parse(json)

    function OnLevelLoaded()
        -- _P("Beginning adding to inventories")
        for itemCount = 1, #itemsToAdd do
            local item = itemsToAdd[itemCount]
            if ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] ~= true and Osi.TemplateIsInInventory(item.ItemUUID, item.EnemyMapKey) ~= nil and Osi.TemplateIsInInventory(item.ItemUUID, item.EnemyMapKey) < 1 then
                Osi.TemplateAddTo(item.ItemUUID, item.EnemyMapKey, 1)
                -- _P(item.ItemName, "added to inventory of", item.EnemyName)
                -- Store the assignment in local table ModVars and update the mod variable GotA_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).GotA_DistributedItems = ModVars
            else
                if ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] == true then
                    -- _P(item.EnemyName, "has been previously assigned this item via variable")
                end
                if Osi.TemplateIsInInventory(item.ItemUUID, item.EnemyMapKey) == nil then
                    -- _P(item.EnemyName, "is unavailable to give item to")
                else
                    -- _P(item.ItemName, "has already been given to", item.EnemyName)
                end
            end
        end
        -- _P("Items Distributed", "Storing to Variables")
    end

    function UnequipExistingItems(target, slot)
        local slotString = getSlot(slot)
        local GUID = GetGUID(target)
        if (GetEquippedItem(GUID,slotString) ~= nil) then
            item_to_unequip = GetEquippedItem(GUID, slotString)
            LockUnequip(item_to_unequip, 0)
            Unequip(GUID,item_to_unequip)
        end		
    end

    function GetGUID(str)
        return string.sub(str,-36)
    end

    function getSlot(slot)
        local GotA_EquipmentSlots = {
            "Helmet",
            "Breast",
            "Cloak",
            "MeleeMainHand",
            "MeleeOffHand",
            "RangedMainHand",
            "RangedOffHand",
            "Ring",
            "Underwear",
            "Boots",
            "Gloves",
            "Amulet",
            "Ring2",
            "Wings",
            "Horns",
            "Overhead",
            "MusicalInstrument",
            "VanityBody",
            "VanityBoots"
        }
        return GotA_EquipmentSlots[slot + 1]
    end

    Ext.Osiris.RegisterListener("TemplateAddedTo", 4, "after", function (wpn_root, wpn_id, character, useless)
        for itemCount = 1, #itemsToAdd do
            local item = itemsToAdd[itemCount]
            if item.ItemUUID == GetGUID(wpn_root) then
                if (item.Equip == true and GetGUID(character) == item.EnemyMapKey and IsPartyMember(character, 1) == 0) then
                    -- _P(character, "attempting to equip")
                    if (IsEquipable(wpn_id) == 1) then
                        local slot = GetEquipmentSlotForItem(wpn_id)          
                        UnequipExistingItems(character, slot)
                        -- _P(character, "equipped", wpn_root)
                        Equip(character, wpn_id)
                    end 
                end
            end
        end
    end)
    Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", OnLevelLoaded)
end

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)