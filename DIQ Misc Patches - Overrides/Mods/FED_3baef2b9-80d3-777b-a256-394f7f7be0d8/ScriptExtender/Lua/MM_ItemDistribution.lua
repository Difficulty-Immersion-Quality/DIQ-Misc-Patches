PersistentVars = {
    
}

-- Register the mod variable for tracking distributed items 
Ext.Vars.RegisterModVariable(ModuleUUID, "MM_DistributedItems", {})   

local function OnSessionLoaded()    
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).MM_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to        
    local itemArray = {
        --ACT 1
        {
            ItemName = "Amulet of the Lions Wrath",
            ItemUUID = "b08ea26f-a122-45f6-99e5-061afcbdf5a8",
            EnemyName = "Gimblebock",
            EnemyMapKey = "538e38b9-e3a4-452a-8369-60eb1fe8c40d",
            Equip = false
        },
        {
            ItemName = "Ring of Deflection",
            ItemUUID = "bace69b2-0c4d-4b62-93b6-74344b9e920a",
            EnemyName = "Baretha",
            EnemyMapKey = "27fa0802-fa38-4eea-9c03-496f2e022259",
            Equip = false
        },
        {
            ItemName = "Sword of the Sundering Strike",
            ItemUUID = "16e88c16-6933-4390-b923-5bd2fcdd50ca",
            EnemyName = "Elenna - Sergeant - Thrinn",
            EnemyMapKey = "0aeb5411-5f13-4263-acb0-87f0689de2e5",
            Equip = false
        },
        {
            ItemName = "Rusting Gauntlets",
            ItemUUID = "58ade5bd-99d6-4d21-9fab-f2d0037628aa",
            EnemyName = "Stonemason Kith - Vendor",
            EnemyMapKey = "d09aecce-fad1-4aa8-9c40-c370a0ac8835",
            Equip = false
        },
        {
            ItemName = "Boots of the Unbreakable Stance",
            ItemUUID = "766e5f0a-d607-4af7-a67e-1ec6e3643344",
            EnemyName = "Ch'r'ai W'wargaz",
            EnemyMapKey = "378ac93e-03a0-40b4-904c-f37989ac7a8c",
            Equip = false
        },
        {
            ItemName = "Shield of the Spiked Shell",
            ItemUUID = "7180336b-33aa-42b2-b6e5-e4dc6f72d340",
            EnemyName = "Bulette",
            EnemyMapKey = "307934b5-6fb5-4fdc-a7ff-433a7ba175b3",
            Equip = false
        },
        {
            ItemName = "Helm of the Stalwart Defender",
            ItemUUID = "68ec8b27-1dca-4327-937d-a7b205a6d1ec",
            EnemyName = "Buried Chest surrounded by barrels, behind Waukeen's Rest main building",
            EnemyMapKey = "cb86b003-2619-456f-b6ff-c159b126dbd6",
            Equip = false
        },
        {
            ItemName = "Bloodsoaked Longsword",
            ItemUUID = "0ac42413-4aa3-4117-98e1-8027e23996c5",
            EnemyName = "Buried Chest in The Festering Cove - Behind Sacrifice Altar",
            EnemyMapKey = "72331319-1dc7-4265-a7ff-c346a921f3ef",
            Equip = false
        },
        {
            ItemName = "Cuirass of the Challenger",
            ItemUUID = "b0714c4d-05a3-47f6-a18e-572e0f3d1ef6",
            EnemyName = "Heavy Chest near Lakrissa",
            EnemyMapKey = "dbf6c9ec-f92a-43aa-8e46-7c6b4fd323fa",
            Equip = false
        },
        {
            ItemName = "Cloak of the Patient Warrior",
            ItemUUID = "11465ad1-4f62-47be-8845-7bf8a3d1dda3",
            EnemyName = "Skeleton on Rosymorn Monastery roof, behind eagles",
            EnemyMapKey = "573f5a03-8cd9-4524-b5e1-949d6f33e9a2",
            Equip = false
        },
		        --ACT 2
        {
            ItemName = "Helm of the Fearless",
            ItemUUID = "b2b2970a-2f8b-4c46-a8b3-5a9f722986c2",
            EnemyName = "Marcus Falgor",
            EnemyMapKey = "acb1dd9e-952b-4281-8e30-ec6f671493a6",
            Equip = false
        },
        {
            ItemName = "Ring of the Disarming Riposte",
            ItemUUID = "f5669a7f-51c6-4ec3-b29d-9fe83526a3e4",
            EnemyName = "MFC Hook Horror",
            EnemyMapKey = "eda129f0-b54b-4b05-95a3-ba626e4b765a",
            Equip = false
        },
        {
            ItemName = "Shadow-Cursed Battleaxe",
            ItemUUID = "c7133082-c3d7-4e0a-be49-71f0b47fb63e",
            EnemyName = "Central Sqr Cursed Harper - Scale Armor",
            EnemyMapKey = "b566eb96-bd49-4019-83f8-3769784fa12f",
            Equip = false
        },
        {
            ItemName = "Golden Cloak of Resilience",
            ItemUUID = "0a3a5a2c-111b-47f1-8bbd-df3e43568b46",
            EnemyName = "Kethric's Room - Wicker Chest",
            EnemyMapKey = "c9c796cd-9d67-49ff-8b2e-be9f228b2001",
            Equip = false
        },
        {
            ItemName = "Gauntlets of the Battle Fury",
            ItemUUID = "43879408-d14a-4d20-873a-19ead9103749",
            EnemyName = "Buried Chest top right of HoH Morgue Entrance",
            EnemyMapKey = "c4a856c3-486e-4fba-aeb3-5a1603632e2f",
            Equip = false
        },
        {
            ItemName = "Pendant of Shielding",
            ItemUUID = "ed63c5c6-a0b8-4ab8-ac50-14a1e298e8cf",
            EnemyName = "Gilded Chest Mason Guild Basement",
            EnemyMapKey = "32495d2a-f93b-44e0-bac7-69927d48258d",
            Equip = false
        },
        {
            ItemName = "Breastplate of Vengeance",
            ItemUUID = "a8480c85-ae5f-45e3-9ce1-c1a4cd89ecec",
            EnemyName = "Skeleton Reithwin Roof",
            EnemyMapKey = "d97d16aa-eaa7-463c-bfeb-40cc5885ab9a",
            Equip = false
        },
        {
            ItemName = "Boots of the Ironclad Champion",
            ItemUUID = "75b4c2d0-572f-44c0-885a-06ec4d0e5479",
            EnemyName = "MRT Docks - Metal Trunk",
            EnemyMapKey = "a0fef0e9-f474-4914-a302-433be7c817c8",
            Equip = false
        },
        {
            ItemName = "Ring of Razors Edge",
            ItemUUID = "0351d14c-d1a5-4d44-9b75-94b845e5a0e5",
            EnemyName = "Wooden Chest SCL - Needle Ambush",
            EnemyMapKey = "eed712ed-2f19-445c-a31c-718ad5d7c6c2",
            Equip = false
        },
        {
            ItemName = "Aegis of the Unflinching Guardian",
            ItemUUID = "0139a6e4-3ba5-4f2b-b572-11f14a2c29bc",
            EnemyName = "Cormyte Box Tollhouse",
            EnemyMapKey = "6b33af1d-d030-4218-87f8-b3837e56025b",
            Equip = false
        },
		 --ACT 3
        {
            ItemName = "Battleaxe of the Sundering Blow",
            ItemUUID = "31add745-e9a0-414b-ba23-314920bc537c",
            EnemyName = "Fytz - Vendor",
            EnemyMapKey = "3c4ebba4-d2ba-4f07-98ed-bc523845ce3b",
            Equip = false
        },
        {
            ItemName = "Ring of the Enduring Warrior",
            ItemUUID = "f814f5a9-d7de-4851-a6ba-140b0ff2bf04",
            EnemyName = "Cairos",
            EnemyMapKey = "40756dfd-a16c-4586-b1c3-6f0de1c7f515",
            Equip = false
        },
        {
            ItemName = "Amulet of the Deathless",
            ItemUUID = "7d9ed20d-533a-4103-b264-8a0d51fbbdc8",
            EnemyName = "Ansur",
            EnemyMapKey = "67770922-5e0a-40c5-b3f0-67e8eb50493a",
            Equip = false
        },
        {
            ItemName = "Gauntlets of Calculated Carnage",
            ItemUUID = "632d9e6b-04e4-48cf-9fb8-dfdc338dbad2",
            EnemyName = "Sarevok",
            EnemyMapKey = "ae9f784a-ea64-4297-95a7-8377e85231b6",
            Equip = false
        },
        {
            ItemName = "Haarlep",
            ItemUUID = "38f096e6-aca8-40de-b15f-77c0836cca98",
            EnemyName = "Scimitar of the Infernal Kiss",
            EnemyMapKey = "3947e0e2-3b4c-4a39-ac53-454e95665b26",
            Equip = false
        },
        {
            ItemName = "Helm of the Exalted Champion",
            ItemUUID = "caf5c11d-2f9b-45b7-a38b-887016bfd12a",
            EnemyName = "Wooden Chest - Gur Hut",
            EnemyMapKey = "29a574f5-d20a-4677-89e0-ac35af4bec3d",
            Equip = false
        },
        {
            ItemName = "Cloak of the Last Stand",
            ItemUUID = "e7c42cca-c2cd-4089-9fbc-b5977c3a5901",
            EnemyName = "Rivington Well - Hidden Backpack",
            EnemyMapKey = "57de9f0d-d537-49e4-a59b-9eeadbf0a084",
            Equip = false
        },
        {
            ItemName = "Boots of the Charging Warlord",
            ItemUUID = "e18a9613-34b2-4fe5-b342-95db18cf5176",
            EnemyName = "Wyrms Crossing - Heavy Chest Lwr Right of Bridge",
            EnemyMapKey = "f2712e42-6e76-40ed-b6b9-97b0bfac5a91",
            Equip = false
        },
        {
            ItemName = "Ring of the Bold",
            ItemUUID = "813f576d-d118-4872-ab96-b54fc322205f",
            EnemyName = "Watchtower between Water Queen and Bank - Pouch",
            EnemyMapKey = "90fca207-f99d-43a0-b3ec-c34593d4ba1e",
            Equip = false
        },
        {
            ItemName = "Living Adamantine Breastplate",
            ItemUUID = "be8a94e1-d18a-4804-8c86-de7f31a7c2d7",
            EnemyName = "Large Display Case - Basilisk Barracks",
            EnemyMapKey = "4f47038f-93f0-4684-a399-fa1d399d9567",
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
                -- Store the assignment in local table ModVars and update the mod variable MM_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).MM_DistributedItems = ModVars
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
        local MM_EquipmentSlots = {
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
        return MM_EquipmentSlots[slot + 1]
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