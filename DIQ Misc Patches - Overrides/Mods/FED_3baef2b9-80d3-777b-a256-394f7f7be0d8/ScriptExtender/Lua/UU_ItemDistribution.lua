PersistentVars = {
    
}

-- Register the mod variable for tracking distributed items 
Ext.Vars.RegisterModVariable(ModuleUUID, "UU_DistributedItems", {})   

local function OnSessionLoaded()    
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).UU_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to        
    local itemArray = {
        --ACT 1
        {
            ItemName = "Ember's Fist",
            ItemUUID = "1800ea01-3321-4900-8ea1-770db3ff003e",
            EnemyName = "Za'krug",
            EnemyMapKey = "22d80f21-7f31-4240-b981-9137d53ad77d",
            Equip = false
        },
        {
            ItemName = "Signet of the Iron Fist",
            ItemUUID = "a1398202-9368-4f9c-bf08-757bd257d4e5",
            EnemyName = "Mattis",
            EnemyMapKey = "e1fda08b-45d4-41db-84b5-20e9931ba5af",
            Equip = false
        },
        {
            ItemName = "Ox's Heart",
            ItemUUID = "7da314f6-41b9-4f22-8731-93ab33291e61",
            EnemyName = "Toll House Chest - Hidden Room",
            EnemyMapKey = "51765477-7425-46b0-8e9d-00cbde9d9f93",
            Equip = false
        },
        {
            ItemName = "Ring of the Nimble Monkey",
            ItemUUID = "e55bb5f9-1806-41c0-9a22-f2133a6c267c",
            EnemyName = "Waterfall Chest near Goblin Camp",
            EnemyMapKey = "c15dd342-2c54-4eb2-a7c4-5e7707bf8fb8",
            Equip = false
        },
        {
            ItemName = "Hood of Awakened Awareness",
            ItemUUID = "f2abf27a-4fda-4a3f-9a39-59b2ff6f8e7d",
            EnemyName = "Spider Hermits Chest",
            EnemyMapKey = "94eb0770-dfb1-41c3-ac12-3d5d7bd01cd1",
            Equip = false
        },
        {
            ItemName = "Fangs of the Emerald Fist",
            ItemUUID = "ceb13d2f-010e-4590-b602-dabf303de535",
            EnemyName = "Arron",
            EnemyMapKey = "13db744d-8a48-4131-8801-fd5fc289fdf6",
            Equip = false
        },
        {
            ItemName = "Amulet of Rekindled Spirit",
            ItemUUID = "635825f2-19af-487a-bc03-4989e3f6c50b",
            EnemyName = "Grat the Trader",
            EnemyMapKey = "3c9f9d17-835c-46bf-929d-240e3b4adb55",
            Equip = false
        },
        {
            ItemName = "Staff of the Unyielding Tree",
            ItemUUID = "ef733742-89da-4c12-8fc0-a1abd9ff33cb",
            EnemyName = "Underground Passage Buried Chest",
            EnemyMapKey = "9cfd06ac-15ef-41c1-a8cc-eedc33abb04d",
            Equip = false
        },
        {
            ItemName = "Helm of Spirit Reach",
            ItemUUID = "1aa5e765-10d9-4a72-865d-50f0d7a2a33d",
            EnemyName = "Inquisitor's Chambers Elegant Chest",
            EnemyMapKey = "ed3a9e57-e75f-41c6-89de-977cd0d641cf",
            Equip = false
        },
        {
            ItemName = "Boots of the Marsh Strider",
            ItemUUID = "7734d9ea-208a-4cdf-b518-c87c2c2a9d84",
            EnemyName = "Ethel Loot and Traded",
            EnemyMapKey = "c457d064-83fb-4ec6-b74d-1f30dfafd12d",
            Equip = false
        },
        {
            ItemName = "Vest of Nimble Resilience",
            ItemUUID = "ea3d85e8-50a1-4bf4-9501-444d847206c0",
            EnemyName = "Arron",
            EnemyMapKey = "13db744d-8a48-4131-8801-fd5fc289fdf6",
            Equip = false
        },
		        --ACT 2
        {
            ItemName = "Blood Spear",
            ItemUUID = "646b37bd-a2d7-4fdf-b586-40eae0d81a7f",
            EnemyName = "Malus Thorm",
            EnemyMapKey = "e58b8b34-038b-4858-b817-c2a8096a9381",
            Equip = false
        },
        {
            ItemName = "Wingsinger Steps",
            ItemUUID = "0c0346b6-4e74-4a23-a086-44cee17c353e",
            EnemyName = "Lann Tarv",
            EnemyMapKey = "8cb1cace-ef98-4387-8b76-2e8efc5cfe89",
            Equip = false
        },
        {
            ItemName = "Storm's Reach Mace",
            ItemUUID = "f50a0bc4-569f-40f3-a2cd-3b8d739514fb",
            EnemyName = "Cursed Kuo-Toa Chief",
            EnemyMapKey = "03524330-c6ca-4078-8fbf-12ec4ffa389a",
            Equip = true
        },
        {
            ItemName = "Cowl of Many Faces",
            ItemUUID = "c0b5de48-4f95-44e2-9aa7-aacde1f6ced4",
            EnemyName = "Talli",
            EnemyMapKey = "f769815c-d437-4a45-9ae4-aebd53ec8f7c",
            Equip = false
        },
        {
            ItemName = "Binding Crimson",
            ItemUUID = "66bd2384-dadf-4ff7-833e-b90a996de26a",
            EnemyName = "House of Healing Morgue Opulent Chest",
            EnemyMapKey = "759af1f2-7aa3-4c91-bb0a-41cbd2c8be54",
            Equip = false
        },
        {
            ItemName = "Shattered Sun Vest",
            ItemUUID = "2126713f-b8fb-4b97-8ac5-f7afc8e027fd",
            EnemyName = "Heavy Chest in Balthazar Room",
            EnemyMapKey = "e28148c7-1ebb-41a1-a90a-99c28361948b",
            Equip = false
        },
        {
            ItemName = "The Amethyst Spur",
            ItemUUID = "9d09ff47-1cc0-4cc8-b61e-3a007961a1a4",
            EnemyName = "Shadow-Cursed Shambling Mound",
            EnemyMapKey = "1b294fe0-f1a1-4e81-9d4c-8d86bbda7d2b",
            Equip = false
        },
        {
            ItemName = "Amulet of Understanding",
            ItemUUID = "c21a8eec-46e8-400f-afc5-3727552853e8",
            EnemyName = "Gerringothe Thorm",
            EnemyMapKey = "3b460226-8ca2-4bbc-9bd7-8bb947aa2c06",
            Equip = false
        },
        {
            ItemName = "Sunspark Shortbow",
            ItemUUID = "a4783f8c-2b10-4b60-8000-630d8eff8f2c",
            EnemyName = "Potter's Chest - Ruined Battlefield",
            EnemyMapKey = "fc32bb9f-922e-4094-a8c6-a019cf65d074",
            Equip = false
        },
        {
            ItemName = "Mantle of the Mountain",
            ItemUUID = "01a83cf7-f726-4eab-9f2a-f68ee78d4cff",
            EnemyName = "Reithwin Tollhouse Chest",
            EnemyMapKey = "2b1ace93-a0ea-49a3-9328-b62117a62753",
            Equip = false
        },
		 --ACT 3
        {
            ItemName = "Vestment of the Ascended Fist",
            ItemUUID = "1b899406-c01d-4d4f-b948-c32f4be4cddc",
            EnemyName = "Shirra Clarwen",
            EnemyMapKey = "cc15a9d4-b600-4e82-b981-3a0038a62c6c",
            Equip = false
        },
        {
            ItemName = "Steady Striker",
            ItemUUID = "e26c34d7-a8a5-4dc2-9a51-1cfc3442355e",
            EnemyName = "Entharl Danthelon",
            EnemyMapKey = "3570c049-effb-4839-aaae-c628b5d01456",
            Equip = false
        },
        {
            ItemName = "Drape of the Stone Guardian",
            ItemUUID = "fc4bdce2-6d92-47a9-915d-2b7c63c57444",
            EnemyName = "Popper",
            EnemyMapKey = "60e4431d-dee5-4af4-a05e-65896ec64f2f",
            Equip = false
        },
        {
            ItemName = "Gloves of the Iron Fist",
            ItemUUID = "2e03824e-d4db-41f2-ad9a-cd35ed765147",
            EnemyName = "Bumpnagel",
            EnemyMapKey = "6fbabd70-2f22-47aa-8def-78459e662ca6",
            Equip = false
        },
        {
            ItemName = "Staff of Striking",
            ItemUUID = "b10f2532-34af-4200-9912-3c5971976c67",
            EnemyName = "Arkleia Oloril",
            EnemyMapKey = "831fbc36-b0df-4248-9c39-50906b715d25",
            Equip = false
        },
        {
            ItemName = "Mask of the Minds Barrier",
            ItemUUID = "67bf9c7c-510c-4baf-957e-3b356803e1b6",
            EnemyName = "Helsik",
            EnemyMapKey = "299a1c00-ff53-415e-ad8e-9bcbbae55597",
            Equip = false
        },
        {
            ItemName = "Boots of the Charging Tiger",
            ItemUUID = "f251de14-8cf6-4b14-925b-d8946739e531",
            EnemyName = "Gloomy Fentonson",
            EnemyMapKey = "dc7d1866-a206-4029-81a4-ad18ffbcf3ea",
            Equip = false
        },
        {
            ItemName = "Ring of the Ashen Fist",
            ItemUUID = "0adb0e3c-e397-4755-a7b8-66c12127f3a5",
            EnemyName = "Sticky Dondo",
            EnemyMapKey = "3352a47c-4259-464d-8047-65bc8a2adff9",
            Equip = false
        },
        {
            ItemName = "",
            ItemUUID = "",
            EnemyName = "Sarevok",
            EnemyMapKey = "ae9f784a-ea64-4297-95a7-8377e85231b6",
            Equip = false
        },
        {
            ItemName = "Pearl of the Coral Throne",
            ItemUUID = "f116d6c4-133b-42b9-929f-e87ec686930f",
            EnemyName = "Sticky Dondo",
            EnemyMapKey = "3352a47c-4259-464d-8047-65bc8a2adff9",
            Equip = false
        },
        {
            ItemName = "Ring of the Weaving Hummingbird",
            ItemUUID = "57b93c24-82c7-407b-aa70-1f7fcbf3e1ec",
            EnemyName = "Ember Gish'ra M'i'hayk",
            EnemyMapKey = "2a57207b-ce9a-4472-aea2-bb94722a9c59",
            Equip = true
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
                -- Store the assignment in local table ModVars and update the mod variable UU_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).UU_DistributedItems = ModVars
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
        local UU_EquipmentSlots = {
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
        return UU_EquipmentSlots[slot + 1]
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