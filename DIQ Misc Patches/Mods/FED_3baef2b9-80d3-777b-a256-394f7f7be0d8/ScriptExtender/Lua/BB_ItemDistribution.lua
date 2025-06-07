PersistentVars = {
    
}

-- Register the mod variable for tracking distributed items 
Ext.Vars.RegisterModVariable(ModuleUUID, "BB_DistributedItems", {})   

local function OnSessionLoaded()    
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).BB_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to        
    local itemArray = {
        --ACT 1
        {
            ItemName = "Feral Companions Call",
            ItemUUID = "0aa33416-ab1d-4e35-9eac-6c3060f3dea8",
            EnemyName = "Flind - Gnoll Warlord",
            EnemyMapKey = "34464430-fed8-4f50-86d5-bd35846920a0",
            Equip = false
        },
        {
            ItemName = "Alphas Visor",
            ItemUUID = "29862b59-2345-47ba-851a-e77102a6d620",
            EnemyName = "Kith'rak Therezzyn - Creche Yllek",
            EnemyMapKey = "5093da9b-237a-491f-9402-4f9da73c1565",
            Equip = false
        },
        {
            ItemName = "Stripping Talons Charm",
            ItemUUID = "e814abf2-398a-4b59-8742-7aba96c7ed4f",
            EnemyName = "Brem - Zhentarim Hideout - Trader",
            EnemyMapKey = "8f63a70b-93e1-4841-8dea-b1f1542fd3c1",
            Equip = false
        },
        {
            ItemName = "Deadeyes Breastplate",
            ItemUUID = "7fe2a4b2-e756-4cca-87a3-b30f9ac7fef5",
            EnemyName = "Karad Zhentarim Basement",
            EnemyMapKey = "3f629653-f427-43f9-92ac-89324de5ec11",
            Equip = true
        },
        {
            ItemName = "Vinewoven Shortbow",
            ItemUUID = "f6e5e9a5-7841-4645-a8bb-5d6a961eb12d",
            EnemyName = "Wooden Chest - Swampland Tree - Same location as The Sparkle Hands",
            EnemyMapKey = "239f0f63-e042-46bc-b98f-a068704555ee",
            Equip = true
        },
        {
            ItemName = "Unseen Stalkers Shroud",
            ItemUUID = "9e27dab9-3c7f-44a6-8987-89c3b829f548",
            EnemyName = "Holvik - Decrepit Village",
            EnemyMapKey = "9c792a46-8a05-43fb-8efa-63d234dbcc6a",
            Equip = false
        },
        {
            ItemName = "Beastbane Gauntlets",
            ItemUUID = "e644b50c-f2ad-4964-8612-70af08f1a5a8",
            EnemyName = "Olly - With Rugan stuck in cave",
            EnemyMapKey = "7eda738e-8a85-4975-a1e1-1b3b2c4d641c",
            Equip = false
        },
        {
            ItemName = "Ring of the Primal Hunter",
            ItemUUID = "1567d529-bc43-41e6-8a2b-284659905789",
            EnemyName = "Torgga - Overgrown Ruins",
            EnemyMapKey = "5d2f2ff7-d1c0-4f95-b12a-b17b60182cfc",
            Equip = false
        },
        {
            ItemName = "Boots of the Swift Stalker",
            ItemUUID = "e5b0cf4a-e58d-4ae3-bd9d-d44bf254024f",
            EnemyName = "Trynn - The Risen Road Tollhouse",
            EnemyMapKey = "97ae38c5-550d-4585-9f9e-a0494ecb863a",
            Equip = false
        },
        {
            ItemName = "Piercing Winds Sting",
            ItemUUID = "07e02601-0b31-4437-b3d4-a4d3ffd53cb0",
            EnemyName = "Sharp-Eye Breg - Goblin Camp, Around Crusher",
            EnemyMapKey = "69ab2a7d-9035-4e4e-97e5-2d005c9662ee",
            Equip = true
        },
		--ACT 2
        {
            ItemName = "Lone Wolf Vestment",
            ItemUUID = "0acc1e31-19d9-40ac-9d34-72c62f9aca24",
            EnemyName = "Kar'niss",
            EnemyMapKey = "aa59ce01-3d2e-42e8-a539-c07e0ea292ab",
            Equip = false
        },
        {
            ItemName = "Unwavering Gaze",
            ItemUUID = "2320c240-9d06-4a7d-acc5-ef09b2f65135",
            EnemyName = "Basement of small house outside of Last Light Inn, same location as Coruscation Ring",
            EnemyMapKey = "8a628fa5-e19d-4887-b9c4-863b9194eea2",
            Equip = false
        },
        {
            ItemName = "Hidden Hunter Boots",
            ItemUUID = "df2c2920-61b7-4f07-a337-d6819dd02778",
            EnemyName = "Same location as Grey Scout Journal",
            EnemyMapKey = "54508087-cec4-4d3a-9ca9-d7e286ae9f9b",
            Equip = false
        },
        {
            ItemName = "Pack Leader Gloves",
            ItemUUID = "83c117c5-1b37-4bf0-bde1-f1021539862f",
            EnemyName = "Linsella - Moonrise Tower",
            EnemyMapKey = "627dfc1c-56e1-4e56-9920-56e381e72c53",
            Equip = true
        },
        {
            ItemName = "Hunters Shroud",
            ItemUUID = "375b63f7-8c3d-4a48-83ed-5085ed98a049",
            EnemyName = "The Warden",
            EnemyMapKey = "66b3e4c0-2f82-4c0a-9333-73a5194f88c7",
            Equip = true
        },
        {
            ItemName = "Farstriders Reach",
            ItemUUID = "6d8c5a1e-7006-494d-bdfc-3e53eb02b35c",
            EnemyName = "Heavy Chest at Reithwin Tollhouse, same location as Fireheart",
            EnemyMapKey = "9bb4a600-0da0-4e75-acb7-d1aa8ecde3d5",
            Equip = false
        },
        {
            ItemName = "Loyal Spirit Whistle",
            ItemUUID = "40dbaf1f-aac5-4690-b88b-f9ad4402c308",
            EnemyName = "Grand Mausoleum - Buried Chest - Survival check of 18",
            EnemyMapKey = "4f6af1ca-f73e-4d07-bf52-79faa62bb99e",
            Equip = false
        },
        {
            ItemName = "Sharpshooters Charm",
            ItemUUID = "50d1a4ef-7438-493b-bd0d-52fb2b1f5eb8",
            EnemyName = "Sharp-Eye Lora",
            EnemyMapKey = "d9efe828-934f-4b38-b741-402001449f0d",
            Equip = true
        },
        {
            ItemName = "Pack Hunter's Spear",
            ItemUUID = "c9fdd447-93a8-41d5-b904-c976ed7cd58d",
            EnemyName = "Talli - Last Light Inn",
            EnemyMapKey = "f769815c-d437-4a45-9ae4-aebd53ec8f7c",
            Equip = false
        },
        {
            ItemName = "Scount's Instinct Ring",
            ItemUUID = "bae29694-a697-4a43-940b-b3f834da8269",
            EnemyName = "Harper Yonas",
            EnemyMapKey = "a0fecf82-7dde-4dd7-af67-eb0ef5aa67e0",
            Equip = false
        },
		--ACT 3
        {
            ItemName = "Hexer's Longbow",
            ItemUUID = "cc2c5e4c-a636-4028-b5ac-404fbe440251",
            EnemyName = "Entharl Danthelon",
            EnemyMapKey = "3570c049-effb-4839-aaae-c628b5d01456",
            Equip = false
        },
        {
            ItemName = "Halberd of the Elusive Serpent",
            ItemUUID = "f0d79413-5e57-48cc-923e-c4f83073fbb1",
            EnemyName = "Kevo Phogge",
            EnemyMapKey = "c24f4c4a-58ad-4c82-b968-5eb7c422993c",
            Equip = true
        },
        {
            ItemName = "Cerberus' Maw Heavy Crossbow",
            ItemUUID = "12ea6ae2-f979-433a-ae0f-8d57c00fa70d",
            EnemyName = "Houndmaster Pol",
            EnemyMapKey = "ae950485-c1c8-45ed-9420-e14007f53cd6",
            Equip = false
        },
        {
            ItemName = "Breastplate of the Soaring Hawk",
            ItemUUID = "ef568582-3115-4a34-a291-66641dd2852b",
            EnemyName = "Vault #3",
            EnemyMapKey = "b0df3609-7395-48cc-a419-63e8172629d8",
            Equip = false
        },
        {
            ItemName = "Headguard of the Master Tracker",
            ItemUUID = "65a7b167-e532-4535-9aa8-6396a4b6b663",
            EnemyName = "Buried Chest - Bloomridge Park",
            EnemyMapKey = "ec4ab559-eb9f-46d2-8385-58d9cee372b8",
            Equip = false
        },
        {
            ItemName = "Striders of the Leaping Stag",
            ItemUUID = "3736a62a-cbd2-496c-ad17-7ff05007a43a",
            EnemyName = "Bumpnagel",
            EnemyMapKey = "6fbabd70-2f22-47aa-8def-78459e662ca6",
            Equip = false
        },
        {
            ItemName = "Gauntlets of the Beastmaster's Fury",
            ItemUUID = "a672fa88-d329-451d-9a0c-7c4716ddae9d",
            EnemyName = "White Worg - Rrripper",
            EnemyMapKey = "755385cb-bee4-4991-bfb5-a03959c99d1f",
            Equip = false
        },
        {
            ItemName = "Band of the Displaced Hunter",
            ItemUUID = "f8facd2d-b47f-48fb-b0ce-1264f400217d",
            EnemyName = "Shadow-Whiskers",
            EnemyMapKey = "4d909cad-9b9b-4f34-ba27-6584bc8b4e20",
            Equip = false
        },
        {
            ItemName = "Archer's Eye Charm",
            ItemUUID = "004682be-9e65-4aa4-a37c-1470f6f91aff",
            EnemyName = "Lurianna Sauvage",
            EnemyMapKey = "5d1dd933-3180-47d6-99e9-ded336ebf08e",
            Equip = false
        },
        {
            ItemName = "Ring of the Precise Strike",
            ItemUUID = "c4f7f841-81ec-4cc1-8045-a61dc38f14bf",
            EnemyName = "Death's Head of Bhaal Feona",
            EnemyMapKey = "6217b97e-3715-4e88-ae20-7ba1aa9da1aa",
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
    _P(json)
    local itemsToAdd = Ext.Json.Parse(json)

    function OnLevelLoaded()
        -- _P("Beginning adding to inventories")
        for itemCount = 1, #itemsToAdd do
            local item = itemsToAdd[itemCount]
            if ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] ~= true and Osi.TemplateIsInInventory(item.ItemUUID, item.EnemyMapKey) ~= nil and Osi.TemplateIsInInventory(item.ItemUUID, item.EnemyMapKey) < 1 then
                Osi.TemplateAddTo(item.ItemUUID, item.EnemyMapKey, 1)
                -- _P(item.ItemName, "added to inventory of", item.EnemyName)
                -- Store the assignment in local table ModVars and update the mod variable BB_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).BB_DistributedItems = ModVars
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
        local BB_EquipmentSlots = {
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
        return BB_EquipmentSlots[slot + 1]
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