PersistentVars = {
    
}

-- Register the mod variable for tracking distributed items 
Ext.Vars.RegisterModVariable(ModuleUUID, "GG_DistributedItems", {})   

local function OnSessionLoaded()    
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).GG_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to        
    local itemArray = {
        --ACT 1
        {
            ItemName = "Whispering Umbra",
            ItemUUID = "3f3b4e75-e139-4597-b980-8e44802be59f",
            EnemyName = "Hidden tree compartment",
            EnemyMapKey = "30fe7685-0a91-45af-bcfc-9e68a985927a",
            Equip = false
        },
        {
            ItemName = "Feywild's Kiss",
            ItemUUID = "03973eb2-3d33-4699-984a-ac805af66bc4",
            EnemyName = "Mattis",
            EnemyMapKey = "e1fda08b-45d4-41db-84b5-20e9931ba5af",
            Equip = false
        },
        {
            ItemName = "Grove In A Bottle",
            ItemUUID = "1082341f-f4e6-4855-879f-d8948aebbed2",
            EnemyName = "Same location as Robe of Summer",
            EnemyMapKey = "8fb2b66d-9bc4-4550-97e7-21a1e3594985",
            Equip = false
        },
        {
            ItemName = "Verdant Ward",
            ItemUUID = "8c35fbf8-9a2d-4224-8a4c-de0e8131f549",
            EnemyName = "Warrior Gresh",
            EnemyMapKey = "3c9e5843-32a6-49e7-91c2-1f8e6ae2833f",
            Equip = true
        },
        {
            ItemName = "Beastwarden's Harness",
            ItemUUID = "57d384c8-74fa-4858-92ed-c9106e09a9c9",
            EnemyName = "Beastmaster Zurk",
            EnemyMapKey = "1fadb35a-6996-4a6a-bd0d-e695b53a3a14",
            Equip = true
        },
        {
            ItemName = "Thornlash Gauntlets",
            ItemUUID = "556943a1-fd29-45dd-8f7e-8c0c60006b2d",
            EnemyName = "Drow corpse - Same location as Flumph Mating Rituals",
            EnemyMapKey = "a38523e2-7630-402e-8036-17cfe5397fe0",
            Equip = false
        },
        {
            ItemName = "Boots of First Bloom",
            ItemUUID = "b7069603-112d-48c2-a69d-0add3b7b1828",
            EnemyName = "Arron",
            EnemyMapKey = "13db744d-8a48-4131-8801-fd5fc289fdf6",
            Equip = false
        },
        {
            ItemName = "Helm of the Wildwood",
            ItemUUID = "d97828b6-fb3d-41e5-b134-913505f8bb8d",
            EnemyName = "Blurg",
            EnemyMapKey = "db424bf6-81ad-463d-8974-f73f1df5af09",
            Equip = false
        },
        {
            ItemName = "Weaver's Edge",
            ItemUUID = "182a5120-cb5d-4587-af8a-c5ba95f6b1d7",
            EnemyName = "Phase Spider Matriarch",
            EnemyMapKey = "e6b2f3ba-2d02-4507-8680-6047322e1a4b",
            Equip = false
        },
        {
            ItemName = "Oakensinger's Staff",
            ItemUUID = "2509151b-6eef-4dae-a31e-ccb40bbca063",
            EnemyName = "Filro the Forgotten",
            EnemyMapKey = "2f00e363-09b2-4573-badc-f0995bef6610",
            Equip = false
        },
		--ACT 2
        {
            ItemName = "Oakheart Talisman",
            ItemUUID = "dd6b383b-d7b5-4b64-b1c2-6150c5381836",
            EnemyName = "Buried Chest near Halsin Portal",
            EnemyMapKey = "c7ec6825-b72c-4052-bf1f-474b3e75d2f8",
            Equip = false
        },
        {
            ItemName = "Stag Whisperer's Band",
            ItemUUID = "13a963aa-8c5c-46e4-97f0-fdb3fb3a74ef",
            EnemyName = "Talli",
            EnemyMapKey = "f769815c-d437-4a45-9ae4-aebd53ec8f7c",
            Equip = false
        },
        {
            ItemName = "Barnacle Bulwark",
            ItemUUID = "61f5d60c-c956-4ec5-ad2d-b9efca79e20a",
            EnemyName = "Cursed Kuo-Toa Chief",
            EnemyMapKey = "03524330-c6ca-4078-8fbf-12ec4ffa389a",
            Equip = false
        },
        {
            ItemName = "Blightwood Embrace",
            ItemUUID = "55ede6a5-faba-4e39-962a-fd97cc84dff5",
            EnemyName = "Shadow Mastiff Alpha",
            EnemyMapKey = "9948395e-def8-4e78-881e-43684a605d5d",
            Equip = false
        },
        {
            ItemName = "Tangledroot Treads",
            ItemUUID = "40780fd1-53dc-4d87-bbb0-5ee3fc439cb1",
            EnemyName = "He Who Was",
            EnemyMapKey = "a66dd998-1e87-433b-b147-359c0572e700",
            Equip = false
        },
        {
            ItemName = "Wildwood Gauntlets",
            ItemUUID = "b004a039-5c90-451e-a02b-2b3970ba67d3",
            EnemyName = "Shadow-Cursed Shambling Mound",
            EnemyMapKey = "1b294fe0-f1a1-4e81-9d4c-8d86bbda7d2b",
            Equip = false
        },
        {
            ItemName = "Briarwood Cuirass",
            ItemUUID = "f2ca5cbd-16b6-4bb4-95cf-c4e7fa7b942e",
            EnemyName = "Oliver Dad - Daddy",
            EnemyMapKey = "509470bc-6c99-40c6-8d50-9dbf78b71dcf",
            Equip = false
        },
        {
            ItemName = "Emeraldwood Circlet",
            ItemUUID = "7bae57b3-d278-42b9-922d-056fa33941e4",
            EnemyName = "Harper Ambush Chest - Same location as Hammergrim Mist Amulet",
            EnemyMapKey = "ac903ca3-8dc9-428c-9c6a-f9e07bd9bc65",
            Equip = false
        },
        {
            ItemName = "Moon Sickle",
            ItemUUID = "2cd5f39f-234d-493c-bf0f-d8a6949530bf",
            EnemyName = "Lann Tarv",
            EnemyMapKey = "8cb1cace-ef98-4387-8b76-2e8efc5cfe89",
            Equip = false
        },
        {
            ItemName = "Staff of the Blossoming Tempest",
            ItemUUID = "cb1f4413-2c0f-4e66-83a2-7caee155f823",
            EnemyName = "Malus Thorm",
            EnemyMapKey = "e58b8b34-038b-4858-b817-c2a8096a9381",
            Equip = false
        },
		--ACT 3
        {
            ItemName = "Amulet of Primal Terror",
            ItemUUID = "a6bab9d8-7045-4172-b1a6-3957a768124a",
            EnemyName = "Entharl Danthelon",
            EnemyMapKey = "3570c049-effb-4839-aaae-c628b5d01456",
            Equip = true
        },
        {
            ItemName = "Ring of the Stormspeaker",
            ItemUUID = "d6eef1f0-1541-44cd-94ef-e1204240e984",
            EnemyName = "Omotola",
            EnemyMapKey = "d68c344d-e491-4ca6-b88e-959e68445bb8",
            Equip = false
        },
        {
            ItemName = "Bark of the Bramblewood",
            ItemUUID = "88d82747-229e-49b6-a75b-5875a8739340",
            EnemyName = "Bosun Gannet",
            EnemyMapKey = "d6f07cae-779b-4f10-b87c-c8117bfa1fe9",
            Equip = false
        },
        {
            ItemName = "Mantle of the Whispering Winds",
            ItemUUID = "8fdafca8-be5c-4af0-8ba3-95257c8daf83",
            EnemyName = "Buried Wooden Chest - Rivington Well ) (Coordinates X:41 Y:-877)",
            EnemyMapKey = "f39ee735-4a2d-41af-97ce-27666a73171d",
            Equip = false
        },
        {
            ItemName = "Footwraps of the Misty Glade",
            ItemUUID = "ec7c782d-92bd-4aec-8a3f-38c2f2810699",
            EnemyName = "Carmen Pennygood",
            EnemyMapKey = "99c32d1b-838c-4db2-8150-d4112aedc636",
            Equip = false
        },
        {
            ItemName = "Gloves of Rot and Ruin",
            ItemUUID = "d8a8fe1b-81a7-43bd-addd-bc2ca1675170",
            EnemyName = "Raphael's Vault - Same location as Helldusk Helmet",
            EnemyMapKey = "0278d4ae-3e7c-4c1e-a4bc-fbf99db35e02",
            Equip = false
        },
        {
            ItemName = "Breastplate of the Frenzied Beast",
            ItemUUID = "7e7297f2-ce7a-4178-b6bc-65cc4f7a4fb3",
            EnemyName = "Opulent Chest Jaheira's Basement - Same location as Belm",
            EnemyMapKey = "a5a3e6ae-ee96-4cb6-b069-fef38ff19cd1",
            Equip = false
        },
        {
            ItemName = "Cowl of Decaying Touch",
            ItemUUID = "c2857199-b7b5-4753-addf-9b431a3063b5",
            EnemyName = "Chelvin - Hemm",
            EnemyMapKey = "7867564d-583d-4558-a927-1508ea61cf75",
            Equip = false
        },
        {
            ItemName = "Staff of the Ancient Guardian",
            ItemUUID = "c940962a-7fee-44e1-be0a-6f9569d5ea5b",
            EnemyName = "Jaheira Dopple",
            EnemyMapKey = "4da802f5-3237-40b8-afff-d728016e3047",
            Equip = false
        },
        {
            ItemName = "Soul Serpent's Fang",
            ItemUUID = "38e2ec6c-ccb7-41e0-aed4-fd43c1cc3f67",
            EnemyName = "Black Gauntlet Tamia Holzt",
            EnemyMapKey = "de084b09-99c6-426e-9159-f692d180d418",
            Equip = true
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
    _P(json)
    local itemsToAdd = Ext.Json.Parse(json)

    function OnLevelLoaded()
        -- _P("Beginning adding to inventories")
        for itemCount = 1, #itemsToAdd do
            local item = itemsToAdd[itemCount]
            if ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] ~= true and Osi.TemplateIsInInventory(item.ItemUUID, item.EnemyMapKey) ~= nil and Osi.TemplateIsInInventory(item.ItemUUID, item.EnemyMapKey) < 1 then
                Osi.TemplateAddTo(item.ItemUUID, item.EnemyMapKey, 1)
                -- _P(item.ItemName, "added to inventory of", item.EnemyName)
                -- Store the assignment in local table ModVars and update the mod variable GG_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).GG_DistributedItems = ModVars
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
        local GG_EquipmentSlots = {
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
        return GG_EquipmentSlots[slot + 1]
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