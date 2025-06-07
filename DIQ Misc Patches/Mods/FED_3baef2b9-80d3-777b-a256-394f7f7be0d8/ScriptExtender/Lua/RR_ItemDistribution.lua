PersistentVars = {
    
}

-- Register the mod variable for tracking distributed items 
Ext.Vars.RegisterModVariable(ModuleUUID, "RR_DistributedItems", {})   

local function OnSessionLoaded()     
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).RR_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to
    local itemArray = {
        --ACT 1
        {
            ItemName = "Javelin of Returning Fury",
            ItemUUID = "c950c381-3453-4f75-843d-bb7475ae9377",
            EnemyName = "Vol - Zhent Basement",
            EnemyMapKey = "32f7a4dc-d7a8-4e89-875c-3f3722879fbb",
            Equip = false
        },
        {
            ItemName = "Ring of the Berserker's Might",
            ItemUUID = "29d64b55-ca6d-47e4-a937-1950fec7249e",
            EnemyName = "Dror Ragzlin",
            EnemyMapKey = "11337af0-6a57-426b-a820-c4b00923dd54",
            Equip = false
        },
        {
            ItemName = "Amulet of the Berserker's Heart",
            ItemUUID = "38adbe54-1b88-4505-aa5b-a75f90b9d8c9",
            EnemyName = "Buthir - Blighted Village Female Ogre",
            EnemyMapKey = "489c7f56-b461-41a6-b519-7ef5f1a1bbdc",
            Equip = false
        },
        {
            ItemName = "Helm of the Madman",
            ItemUUID = "b3b4a8a3-d11c-4ae1-a825-710ac36dd480",
            EnemyName = "Garmor - Decrepit Village",
            EnemyMapKey = "8146788d-9d39-4cf2-99ca-03484deb0c55",
            Equip = false
        },
        {
            ItemName = "Bloodsoaked Armwraps",
            ItemUUID = "9b35934f-73c7-4125-966a-6074b644fd92",
            EnemyName = " Haseid - Overgrown Ruins",
            EnemyMapKey = "fd5f646a-d5f6-4f19-904f-61dfc7e14d7e",
            Equip = false
        },
        {
            ItemName = "Garb of the Untamed Fury",
            ItemUUID = "2bc9c7be-50ec-4120-a091-1c148489c706",
            EnemyName = "Lava Elemental Underdark",
            EnemyMapKey = "1c47b089-3e59-41ca-a300-47dfd941b5a0",
            Equip = false
        },
        {
            ItemName = "Cloak of the Storm's Fury",
            ItemUUID = "c38629e5-2946-419f-ae89-2a0baaa1b68a",
            EnemyName = "Lady Esther",
            EnemyMapKey = "5f4048ba-72ef-43c2-9528-1c9a12f3f82f",
            Equip = false
        },
        {
            ItemName = "Ring of the Blood Frenzy",
            ItemUUID = "9a884663-b7a1-49e9-b08c-6dac95ac219d",
            EnemyName = "Ornate Chest under bolder near crash site shore",
            EnemyMapKey = "89b85f26-c282-40e2-bfdc-bf0932649443",
            Equip = false
        },
        {
            ItemName = "The Wrathful Maul",
            ItemUUID = "47e28ab9-0f37-4def-9899-4a5106c5a4eb",
            EnemyName = "Buried Chest, Near 2x Minotaur Underdark",
            EnemyMapKey = "304f9e5b-a658-4787-b085-a4d8527fa934",
            Equip = false
        },
        {
            ItemName = "Boots Of Striding And Springing",
            ItemUUID = "d047ab7b-beee-488f-a5ff-167df40dae3a",
            EnemyName = "Heavy Chest in goblin camp, watch tower",
            EnemyMapKey = "03d69d16-5d9a-4910-aed6-89f3cf1f386c",
            Equip = false
        },
		        --ACT 2
        {
            ItemName = "Spiked Gauntlets of the Pit Fighter",
            ItemUUID = "6fd0c965-91d3-41f5-a419-cc494be542f0",
            EnemyName = "Bedi",
            EnemyMapKey = "8e95a1ed-12f0-4b2e-9d22-d9b4522a1445",
            Equip = false
        },
        {
            ItemName = "Horn of Valhalla",
            ItemUUID = "256fae55-8360-41d5-8dfc-28a06226be60",
            EnemyName = "Thisobald Thorm",
            EnemyMapKey = "4d9e3db3-9a78-4f4b-8101-1dd73c0f3be5",
            Equip = false
        },
        {
            ItemName = "Helmet of the Berserker's Eye",
            ItemUUID = "9d079014-82f2-4c71-9a30-723c47ffdbd3",
            EnemyName = "Skeleton in Outhouse at The Waning Moon",
            EnemyMapKey = "e25ded1d-32ea-4af7-ad8c-b91390b3d46b",
            Equip = false
        },
        {
            ItemName = "Mantle of the Mountain's Strength",
            ItemUUID = "89e6f90d-52b2-44da-9835-4ac1312768ba",
            EnemyName = "Glourik",
            EnemyMapKey = "234ee81c-4fea-4aa5-adb4-670a73fdc511",
            Equip = false
        },
        {
            ItemName = "Bloodaxe",
            ItemUUID = "814e8ee4-d524-47d5-beb9-dc47b07d7262",
            EnemyName = "Balthaza Flesh Golem",
            EnemyMapKey = "5d25116f-4e25-4f9f-bb7a-1d1fdfa8fd4f",
            Equip = false
        },
        {
            ItemName = "Chestguard of the Iron Heart",
            ItemUUID = "15042d57-635a-45e1-b907-3bd46501768e",
            EnemyName = "Lann Tarv",
            EnemyMapKey = "8cb1cace-ef98-4387-8b76-2e8efc5cfe89",
            Equip = false
        },
        {
            ItemName = "Ring of the Rampaging Bull",
            ItemUUID = "5eab93c5-2ded-4b3c-bf4a-e76724176ef7",
            EnemyName = "Opulent Chest in Tollhouse, Near Visage of Heartlessness",
            EnemyMapKey = "226724be-5221-4ec1-9bea-ffadaedfdbfa",
            Equip = false
        },
        {
            ItemName = "Boots of the Mountain Goat",
            ItemUUID = "5b30f5e0-bc31-49ad-9b59-d2c169bc369a",
            EnemyName = "Traveler's Chest near ruined Signpost, Near He Who Was",
            EnemyMapKey = "41baaab6-ed18-497f-a083-e400fbe125e6",
            Equip = false
        },
        {
            ItemName = "Warhammer of Thunder",
            ItemUUID = "7945c156-c7b1-4f4b-b05d-e0cf4d55943d",
            EnemyName = "Opulent Chest on MRT ledge, next to statue/WngHorrors",
            EnemyMapKey = "d427fbde-5322-4ef1-96b3-08780780a421",
            Equip = false
        },
        {
            ItemName = "Amulet of the Savage Reprisal",
            ItemUUID = "d0316116-7404-45a5-8d8c-2528cdd8ae55",
            EnemyName = "Cartilaginous Chest, near Mind-Archive Interface",
            EnemyMapKey = "5f5d9927-5ba2-43ab-9b53-7fec3ae1aff4",
            Equip = false
        },
		 --ACT 3
        {
            ItemName = "Ring of the Relinquished Rage",
            ItemUUID = "f3492c59-7211-4ff9-afeb-fcab1d8ce3b3",
            EnemyName = "Gleeful Clong",
            EnemyMapKey = "e7fc87a2-2320-43fc-83b3-5c9bc2076efe",
            Equip = false
        },
        {
            ItemName = "Boots of the Earthshaker",
            ItemUUID = "dd9e2642-338a-4576-8331-1a0f97423320",
            EnemyName = "Shiv Dahlia",
            EnemyMapKey = "e212b083-4b2b-4a59-b0a4-3520b776b8f8",
            Equip = false
        },
        {
            ItemName = "Amulet of the Avatar of War",
            ItemUUID = "b2374cdb-9213-493d-94db-317666a6be5e",
            EnemyName = "Rustic Chest near Exploits of the Order of Keen Strike",
            EnemyMapKey = "28c80504-ef93-4d69-8234-6e693fa0a29b",
            Equip = false
        },
        {
            ItemName = "Gauntlets of the Titan's Grip",
            ItemUUID = "300fcbf1-1cc0-4a04-960a-5cf332574c79",
            EnemyName = "Mask of Vengeance - The Blushing Mermaid",
            EnemyMapKey = "0406349d-d0fc-4bf5-8d18-5b8b8c9e6456",
            Equip = false
        },
        {
            ItemName = "Breastplate of the Titan's Fortitude",
            ItemUUID = "17fd0cfe-de61-489f-8e7e-9c8d7288ddbc",
            EnemyName = "Steel Watcher Titan",
            EnemyMapKey = "51db791d-4378-448a-86ba-3e3ae2748db6",
            Equip = false
        },
        {
            ItemName = "Ring of Primitive Fury",
            ItemUUID = "0bce7cee-ec88-4b3c-891a-eff4749f126c",
            EnemyName = "Sahuagin Champion - LC",
            EnemyMapKey = "36902e83-9823-418a-8481-8835e95d481c",
            Equip = false
        },
        {
            ItemName = "Handaxe of Primal Fury",
            ItemUUID = "4118d9e7-3196-45e4-bb36-776ce95ba60f",
            EnemyName = "Inku Neza",
            EnemyMapKey = "9b19aa71-7d43-4f63-9aee-dd9a5e09fede",
            Equip = false
        },
        {
            ItemName = "Warhammer of the Thunder God",
            ItemUUID = "f4924bff-2ebc-4154-816d-7e63261755df",
            EnemyName = "Exxvikyap",
            EnemyMapKey = "b0caa965-537c-4d10-a672-4943825b73ea",
            Equip = false
        },
        {
            ItemName = "The Bear's Embrace",
            ItemUUID = "ba5fe87f-3c50-4c32-a51f-0edeec3e3d71",
            EnemyName = "Buried Chest by Windmill, in Field",
            EnemyMapKey = "ab2849f5-3ddf-485b-b66c-c11ec3de1748",
            Equip = false
        },
        {
            ItemName = "Helm of the Mountain King",
            ItemUUID = "e5180bbb-4725-47d1-9a80-8255348b15db",
            EnemyName = "Wooden Chest on roof of Wyrmrock Fortress, Near dead bhaalist",
            EnemyMapKey = "a54e9776-0bbe-4495-bfdb-79470634c343",
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
                -- Store the assignment in local table ModVars and update the mod variable RR_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).RR_DistributedItems = ModVars
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
        local RR_EquipmentSlots = {
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
        return RR_EquipmentSlots[slot + 1]
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