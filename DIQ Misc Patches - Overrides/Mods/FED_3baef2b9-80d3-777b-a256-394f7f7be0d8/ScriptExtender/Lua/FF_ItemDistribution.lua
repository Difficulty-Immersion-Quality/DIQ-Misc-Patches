PersistentVars = {
    
}

-- Register the mod variable for tracking distributed items
Ext.Vars.RegisterModVariable(ModuleUUID, "FF_DistributedItems", {})   

local function OnSessionLoaded()    
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).FF_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to        
    local itemArray = {
        --ACT 1
        {
            ItemName = "Staff of Radiant Authority",
            ItemUUID = "72a8b271-b07a-4720-84b1-8b11cf7c60ee",
            EnemyName = "Dror Ragzlin",
            EnemyMapKey = "11337af0-6a57-426b-a820-c4b00923dd54",
            Equip = false
        },
        {
            ItemName = "Censer of Forgotten Prayers",
            ItemUUID = "4ba79503-c538-4214-8cd7-1228e3147d02",
            EnemyName = "Fezzerk",
            EnemyMapKey = "b2c582af-bc69-48b3-a004-648562dab404",
            Equip = false
        },
        {
            ItemName = "Gloves of Clinging Life",
            ItemUUID = "de39208a-e893-48c0-8700-66b477723185",
            EnemyName = "Torturer Spike",
            EnemyMapKey = "3f1fa953-6a0d-4589-adfd-23c69603da2f",
            Equip = false
        },
        {
            ItemName = "Eyes of the Swamp",
            ItemUUID = "72893d74-24d6-44c6-a2a3-96aa4b2c011f",
            EnemyName = "Ethels Lair Chest",
            EnemyMapKey = "40d6f1ee-921f-42e3-ad26-166ca338a047",
            Equip = false
        },
        {
            ItemName = "Celestial Tears",
            ItemUUID = "81b3572a-51cd-49cb-90bd-6de588254c24",
            EnemyName = "Arcane Tower Basement Chest",
            EnemyMapKey = "99ef091e-23b0-4dea-8c5e-956e73500543",
            Equip = false
        },
        {
            ItemName = "Ring of the Faithful Initiate",
            ItemUUID = "730f240b-e2a9-4bab-a905-bfe7872ace44",
            EnemyName = "Owlbear",
            EnemyMapKey = "e903a41f-8ef7-46dc-a847-7d0ec2804d08",
            Equip = false
        },
        {
            ItemName = "Grove Protectors Mantle",
            ItemUUID = "3ccf9e4f-59bb-4690-b6a3-201a3f821b18",
            EnemyName = "Arron",
            EnemyMapKey = "13db744d-8a48-4131-8801-fd5fc289fdf6",
            Equip = false
        },
        {
            ItemName = "Shield of the Watchful Moon",
            ItemUUID = "0c3b7d3f-fe37-4db4-9659-efb4023dd399",
            EnemyName = "Grat the Trader",
            EnemyMapKey = "3c9f9d17-835c-46bf-929d-240e3b4adb55",
            Equip = false
        },
        {
            ItemName = "Nimblefoot Boots",
            ItemUUID = "bb101c39-3a73-49cb-840c-afa59da50786",
            EnemyName = "Andrik",
            EnemyMapKey = "2c9b967d-fbaa-43c0-9461-3e1598b5fbe1",
            Equip = false
        },
        {
            ItemName = "Starlight Circlet",
            ItemUUID = "74bfb154-a2d5-43e9-871d-ba9c91db7107",
            EnemyName = "Derryth Bonecloak",
            EnemyMapKey = "2b537d2a-14c8-43b3-ab71-d537c925a2a7",
            Equip = false
        },
		--ACT 2
        {
            ItemName = "Flail of Terror",
            ItemUUID = "6da202eb-6e06-446a-b47d-f6c1c9cc9460",
            EnemyName = "Kressa Bonedaughter",
            EnemyMapKey = "6068a46e-bbe4-4fc6-b955-cd8886fa5542",
            Equip = true
        },
        {
            ItemName = "Life-Weaver Crossbow",
            ItemUUID = "1360a295-d1a1-4328-bff9-6e1b3b864b0d",
            EnemyName = "Loose Plank - Waning Moon - Madeline's Ledger",
            EnemyMapKey = "5489045d-7d85-407b-bae1-860847cb0440",
            Equip = false
        },
        {
            ItemName = "Staff of Resurrection",
            ItemUUID = "f282bffe-6e6d-47e8-b490-973953290f83",
            EnemyName = "Hidden Plank - Moonrise Tower - Ketherics Room - Letter to Ketheric",
            EnemyMapKey = "6276edbc-cc09-4569-9050-f70f77ab2ac8",
            Equip = false
        },
        {
            ItemName = "Pendant of Divine Duality",
            ItemUUID = "2f86360d-637d-4596-8cec-75e00cf9d3df",
            EnemyName = "Talli",
            EnemyMapKey = "f769815c-d437-4a45-9ae4-aebd53ec8f7c",
            Equip = false
        },
        {
            ItemName = "Ring of the Twilight Cleric",
            ItemUUID = "74b8ca3c-43c2-4234-8ea0-611e0bc5d689",
            EnemyName = "Lyrthindor",
            EnemyMapKey = "594ba359-ce55-4b54-9efc-94eca306c540",
            Equip = false
        },
        {
            ItemName = "Shield of the Azure Star",
            ItemUUID = "559473ee-979b-4ac0-a412-62caee802e7b",
            EnemyName = "Olivers Chest - Ring of Mental Inhibition",
            EnemyMapKey = "b091d1f5-440c-46be-8248-d47ba0d4924d",
            Equip = false
        },
        {
            ItemName = "Symbol of Hope",
            ItemUUID = "f1a71dba-32bd-4ab8-a809-06519b4fe08f",
            EnemyName = "Cloaker",
            EnemyMapKey = "c8119fa9-0b73-421d-a5fc-b163e399a185",
            Equip = false
        },
        {
            ItemName = "Wings of Faith",
            ItemUUID = "d5c736cc-47f8-4511-819e-113808231bf4",
            EnemyName = "Hoarding Merregon",
            EnemyMapKey = "fbbf364f-5da0-4d60-86e4-ecf68da8fb25",
            Equip = false
        },
        {
            ItemName = "Gauntlets of Divine Fortune",
            ItemUUID = "962c4d5a-5c7a-4eac-916c-fc8b4f3897f7",
            EnemyName = "Hidden Floorboard - Last Light Inn - Snowburst Ring",
            EnemyMapKey = "ae2fca2e-7318-49e2-ba8d-dec73c605c17",
            Equip = false
        },
        {
            ItemName = "Lifespark Chainmail",
            ItemUUID = "dcc69692-eed7-4f98-bc60-a29de887c4e6",
            EnemyName = "True Soul Korliss - Mastiff Poacher",
            EnemyMapKey = "ce1526d5-c9fa-49f7-80f9-b1ac15252968",
            Equip = false
        },
		--ACT 3
        {
            ItemName = "Cape of the Devout",
            ItemUUID = "5c1c458e-a1eb-46cc-b141-41f9a9e14161",
            EnemyName = "Viconia DeVir",
            EnemyMapKey = "b1ea974d-96fb-47ca-b6d9-9c85fcb69313",
            Equip = true
        },
        {
            ItemName = "Amulet of Unshakeable Faith",
            ItemUUID = "9bd5700c-ac87-4e17-ad36-d7f97885132a",
            EnemyName = "Mirie - House of Grief",
            EnemyMapKey = "2d74b412-6ed8-438a-b229-6cee7a48acca",
            Equip = false
        },
        {
            ItemName = "Boots of the Blessed Step",
            ItemUUID = "fb22e647-b845-447d-8bca-8dbec8a0eecc",
            EnemyName = "Allandras Chest",
            EnemyMapKey = "f624287a-4051-4377-a1ae-a0b55d74c1d0",
            Equip = false
        },
        {
            ItemName = "Helm of the Martyr",
            ItemUUID = "e047d95c-e7e7-4764-99eb-9f0996fa22bc",
            EnemyName = "Vicar Humbletoes",
            EnemyMapKey = "32ec6ad3-c085-4fc5-943b-e2e3a05d9f2b",
            Equip = false
        },
        {
            ItemName = "Holy Symbol of Shared Fortitude",
            ItemUUID = "9d16d70b-07e1-4b0d-a979-cdb1145c38f4",
            EnemyName = "Nocturne",
            EnemyMapKey = "2c10ff0f-d2ff-4dcb-8f8b-c6f870044f5d",
            Equip = false
        },
        {
            ItemName = "Shield of the Zealous",
            ItemUUID = "1cd58d0e-dab1-4bd5-ba60-123834cf20ad",
            EnemyName = "Gloomy Fentonson",
            EnemyMapKey = "dc7d1866-a206-4029-81a4-ad18ffbcf3ea",
            Equip = false
        },
        {
            ItemName = "Staff of Healing",
            ItemUUID = "b85ff8c3-6e7f-48c4-ba8e-7976786b719e",
            EnemyName = "Tolna Tome-Monger",
            EnemyMapKey = "46aa02d8-28e9-4ebb-876c-82fe29262d35",
            Equip = false
        },
        {
            ItemName = "Gloves of Prayers",
            ItemUUID = "be3df666-5f9d-4dcf-919b-4086aa2b668e",
            EnemyName = "Father Lorgan's Chest",
            EnemyMapKey = "fa41b720-f976-41ab-81bb-5d2b70b9136e",
            Equip = false
        },
        {
            ItemName = "Breastplate of the Crusade",
            ItemUUID = "a6ead90b-cd49-4ff5-a9cb-8b8b3b7dbd00",
            EnemyName = "Elegant Chest Sharran Grotto",
            EnemyMapKey = "917e8091-0749-445d-b7a2-658ad7f7cc26",
            Equip = false
        },
        {
            ItemName = "Ring of the Guiding Star",
            ItemUUID = "01ccc8b5-2637-4050-b033-fd063152f1c9",
            EnemyName = "Vault 8",
            EnemyMapKey = "b9e1344b-1bb3-455f-83f0-338c5fa153d8",
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
            EnemyName = "Ethel Loot and Traded",
            EnemyMapKey = "c457d064-83fb-4ec6-b74d-1f30dfafd12d",
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
                -- Store the assignment in local table ModVars and update the mod variable FF_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).FF_DistributedItems = ModVars
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
        local FF_EquipmentSlots = {
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
        return FF_EquipmentSlots[slot + 1]
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