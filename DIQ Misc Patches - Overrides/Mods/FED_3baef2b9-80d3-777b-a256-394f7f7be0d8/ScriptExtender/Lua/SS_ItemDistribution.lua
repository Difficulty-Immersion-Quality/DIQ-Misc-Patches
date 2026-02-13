PersistentVars = {
    
}

-- Register the mod variable for tracking distributed items 
Ext.Vars.RegisterModVariable(ModuleUUID, "SS_DistributedItems", {})   

local function OnSessionLoaded()    
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).SS_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to        
    local itemArray = {
        --ACT 1
        {
            ItemName = "The Serpent's Tongue",
            ItemUUID = "c5bfe0aa-c93b-4fec-a55c-6e9e7947da50",
            EnemyName = "Ornate Chest - Zhent Underground",
            EnemyMapKey = "9c3d365e-c45b-4447-b1f1-68930c2f2f00",
            Equip = false
        },
        {
            ItemName = "Flute of Haunting",
            ItemUUID = "ea0d1102-a14b-48dd-b578-a7854150484d",
            EnemyName = "Roah Moonglow",
            EnemyMapKey = "646936f3-8d8d-484e-9361-cd1ed484c615",
            Equip = false
        },
        {
            ItemName = "Hat of the Siren's Call",
            ItemUUID = "677edd57-3a50-4fb7-86c2-168a80c0e116",
            EnemyName = "Wooden Chest by Harpy Nest",
            EnemyMapKey = "d6fbc78c-31c9-4e89-b64d-b2c0858eccb0",
            Equip = false
        },
        {
            ItemName = "Tunic of the Inspiring Leader",
            ItemUUID = "d8ef9e14-c544-4428-9539-9c611433c41a",
            EnemyName = "Minotaur closest to underdark Selune Temple",
            EnemyMapKey = "b63c0d26-7c5f-4dc5-a3d1-2cc99367c809",
            Equip = false
        },
        {
            ItemName = "The Jester's Gloves",
            ItemUUID = "fa585713-f306-44eb-9fe2-c28cd0c53a92",
            EnemyName = "Gilded Chest above Priestess Gut",
            EnemyMapKey = "9554c034-7c2b-454b-b88e-b13c33fa4a43",
            Equip = false
        },
        {
            ItemName = "Boots of the Dancer",
            ItemUUID = "527155d1-d4b8-42c2-964b-7322243d07c6",
            EnemyName = "Buried Chest by Ladder and Goblin Kids",
            EnemyMapKey = "d1514d12-e841-44b7-9344-d1ef4dbb4149",
            Equip = false
        },
        {
            ItemName = "Muse's Inspiration Cape",
            ItemUUID = "76dc1e15-188c-4107-9c7c-9e31ec9095bf",
            EnemyName = "Skeleton - Same location as Helmet of Autonomy",
            EnemyMapKey = "1ef41a0f-360f-4826-9766-d45f640684a8",
            Equip = false
        },
        {
            ItemName = "Ring of the Phantom Ensemble",
            ItemUUID = "afa41018-4ca1-46e3-96b3-8f26a8fa2f5a",
            EnemyName = "Nere",
            EnemyMapKey = "06bf05c5-216b-4eaf-91f5-8f1dd3d57f30",
            Equip = false
        },
        {
            ItemName = "Ring of Enchanting Tales",
            ItemUUID = "c2b1a852-7b85-45b1-aef0-8fd4ddad8d95",
            EnemyName = "Gilded Chest near Alfira",
            EnemyMapKey = "070a769c-6ca8-4e31-a387-7bf95eb21041",
            Equip = false
        },
        {
            ItemName = "Harmonizing Amulet",
            ItemUUID = "63edccd0-b2b7-4160-8974-f8ffe8b22e0e",
            EnemyName = "Lady Esther",
            EnemyMapKey = "5f4048ba-72ef-43c2-9528-1c9a12f3f82f",
            Equip = false
        },
		--ACT 2
        {
            ItemName = "The Luck Blade",
            ItemUUID = "51990bc1-f3ce-4d0c-92b7-0239f963944c",
            EnemyName = "Yurgir",
            EnemyMapKey = "1dc8091d-2af6-4d33-9268-998ef266d19c",
            Equip = false
        },
        {
            ItemName = "The Madman's Whisper - Hand Crossbow",
            ItemUUID = "0acaf281-0fe1-4f8a-bdf3-8617ea0f5d5f",
            EnemyName = "Open Grave by Last Light Inn",
            EnemyMapKey = "472199db-9e39-4f40-9a0d-9c439b1953bf",
            Equip = false
        },
        {
            ItemName = "Rhythm Maker's Drum",
            ItemUUID = "5c473015-4caf-4bf6-851d-4637bb96717d",
            EnemyName = "Gilded Chest - 2nd Floor of House of Healing",
            EnemyMapKey = "2282539c-451e-4dcb-8836-c5b8522c771f",
            Equip = false
        },
        {
            ItemName = "Hat of Persuasion",
            ItemUUID = "acbb7cb7-6ceb-4e79-96a8-58d83c2a650f",
            EnemyName = "Rustic Chest in the backroom of The Waning Moon -  Behind Locked Bars - On Shelf",
            EnemyMapKey = "f64e0275-63d1-42ee-b979-d2bbf85df79e",
            Equip = false
        },
        {
            ItemName = "Tunic of Spectral Shift",
            ItemUUID = "29dac7c7-cc25-4e80-a9d2-0b0c1907627a",
            EnemyName = "Charismatic Sentinel",
            EnemyMapKey = "86b97d31-f124-4579-b88e-ac34312d21cf",
            Equip = false
        },
        {
            ItemName = "Gloves of the Maestro",
            ItemUUID = "c0b9371e-3640-4d60-aef6-16e31005d21c",
            EnemyName = "Heavy Chest on the outskirts of Moonrise Tower",
            EnemyMapKey = "06f19211-7d56-444e-9159-f53c6581955f",
            Equip = false
        },
        {
            ItemName = "Boots of the Springing Step",
            ItemUUID = "d39eb4e4-f7b9-4819-ba94-fcda49c2797e",
            EnemyName = "Drop from Meazel 03",
            EnemyMapKey = "49dd9085-95c9-43f9-8e07-56d44cf1836a",
            Equip = false
        },
        {
            ItemName = "Cape of the Swift Blade",
            ItemUUID = "0143fd35-bc60-42e3-9d97-b5f2db73dfcd",
            EnemyName = "Drop from Maghtew Budj",
            EnemyMapKey = "f87898c9-5f13-44a2-b497-2be1c644a9e3",
            Equip = false
        },
        {
            ItemName = "Ring of the Wandering Bard",
            ItemUUID = "e15b7ff1-873d-4aca-b201-089c5eb1507c",
            EnemyName = "Lann Tarv",
            EnemyMapKey = "8cb1cace-ef98-4387-8b76-2e8efc5cfe89",
            Equip = false
        },
        {
            ItemName = "Amulet of the Performer's Resilience",
            ItemUUID = "f0a24305-8767-4127-8a13-cb1db97904b0",
            EnemyName = "Rosewood Casket in House of Healing Morgue",
            EnemyMapKey = "2b596243-1286-445b-ae8b-d9ed2d18b7e2",
            Equip = false
        },
		--ACT 3
        {
            ItemName = "Starsong Blade",
            ItemUUID = "20db7807-9a3d-454d-9f04-9cf17ce85b08",
            EnemyName = "Gortash",
            EnemyMapKey = "b878a854-f790-4999-95c4-3f20f00f65ac",
            Equip = false
        },
        {
            ItemName = "Lyre of the Wanderer",
            ItemUUID = "113a882c-0de2-4eb0-a32b-6a9bc04cfe25",
            EnemyName = "Wooden Chest near the hidden entrance to Wyrm's Rock Fortress",
            EnemyMapKey = "4f599348-2ba9-43e2-8d74-e0034f13d120",
            Equip = false
        },
        {
            ItemName = "Visage of Vanishing Laughter",
            ItemUUID = "73aa053d-98d5-4c47-9c7f-347c77fe3a0e",
            EnemyName = "Vault #1",
            EnemyMapKey = "a7062175-0a33-4ad4-a171-fc68270fd282",
            Equip = false
        },
        {
            ItemName = "Vest of the Vaudeville Veteran",
            ItemUUID = "ddcc64bf-fa33-4f07-b194-2b3f950072da",
            EnemyName = "Sold by Hoots Hooligan",
            EnemyMapKey = "ab24945c-268d-4f90-b8ea-bbb11cd50157",
            Equip = false
        },
        {
            ItemName = "Gloves of the Mocking Jest",
            ItemUUID = "f26e4489-40ff-4e61-a61c-a153599f9601",
            EnemyName = "Buried chest in the Circus",
            EnemyMapKey = "e103309e-14c9-423b-9dd9-faa070bc2dd4",
            Equip = false
        },
        {
            ItemName = "Boots of the Quickblade",
            ItemUUID = "10e9b457-40c7-4b47-addf-831374e71b8d",
            EnemyName = "Dropped by Cursed Imp - On boat next to Water Queens House",
            EnemyMapKey = "008b019e-5e7d-456a-8697-656f8ca8f241",
            Equip = false
        },
        {
            ItemName = "Cape of the Symphony of Souls",
            ItemUUID = "0d2ba973-5875-45b7-8b77-cfb376fca2b3",
            EnemyName = "Backpack next to Dairow Vin",
            EnemyMapKey = "33e49f15-4bb2-4a4e-8e3c-87c7c5920909",
            Equip = false
        },
        {
            ItemName = "Ring of the Master Performer",
            ItemUUID = "97ba49ee-828b-4ac2-9f74-9c8b86eae33f",
            EnemyName = "Puch next to Piano Stool in Blushing Mermaid",
            EnemyMapKey = "b576233d-064a-435c-8e4c-d39fceefb8a2",
            Equip = false
        },
        {
            ItemName = "Ring of the Eternal Crescendo",
            ItemUUID = "cfef86df-2b1d-4747-b218-decf9ec721af",
            EnemyName = "Opulent Chest in Glitter Gala Basement - Piano Performance Check of 18",
            EnemyMapKey = "67136eb5-9a37-437e-a511-74bb9c4354bb",
            Equip = false
        },
        {
            ItemName = "Amulet of Thunderous Voice",
            ItemUUID = "8f095b78-8335-422a-8dc3-eb88e76415a7",
            EnemyName = "Sold by Thomas C. Quirkilious",
            EnemyMapKey = "bfb008db-a56e-4de7-bca5-e84a11619b21",
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
                -- Store the assignment in local table ModVars and update the mod variable SS_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).SS_DistributedItems = ModVars
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
        _P("Items Distributed", "Storing to Variables")   
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
        local SS_EquipmentSlots = {
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
        return SS_EquipmentSlots[slot + 1]
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