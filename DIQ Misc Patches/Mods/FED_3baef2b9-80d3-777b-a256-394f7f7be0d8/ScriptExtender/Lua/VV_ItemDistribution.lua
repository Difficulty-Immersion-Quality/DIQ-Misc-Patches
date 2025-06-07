PersistentVars = {
    
}

 -- Register the mod variable for tracking distributed items 
Ext.Vars.RegisterModVariable(ModuleUUID, "VV_DistributedItems", {})   


local function OnSessionLoaded()    
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).VV_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to        
    local itemArray = {
        --ACT 1
        {
            ItemName = "Cape of the Chameleon",
            ItemUUID = "b5a9c867-1be6-4bc7-a256-616c8108d654",
            EnemyName = "Grove Kids Thieves' Stash",
            EnemyMapKey = "6a957f96-e910-4a3b-ad12-03359775c4b8",
            Equip = false
        },
        {
            ItemName = "Amulet of the Cornered Rat",
            ItemUUID = "0ab33ae4-c221-4999-a335-35c36e7a378c",
            EnemyName = "Heavy Chest in Goblin Camp - Zhent QM Chest",
            EnemyMapKey = "b3cb0d46-4566-4939-8102-f26e17b224a6",
            Equip = false
        },
        {
            ItemName = "Shadowskin Jerkin",
            ItemUUID = "9b53e75a-0192-4aa8-bc6f-f5ffc37b69ca",
            EnemyName = "Mari - Overgrown Ruins",
            EnemyMapKey = "8409e274-4a4a-4de6-b34c-e701847ed86e",
            Equip = false
        },
        {
            ItemName = "Ring of the Steady Hand",
            ItemUUID = "2a5ab444-30da-4a9f-8bfa-a1f37b0a9f0e",
            EnemyName = "Garias - Zhent Basement",
            EnemyMapKey = "50c17970-3683-4417-b4f3-bd1e117e3176",
            Equip = false
        },
        {
            ItemName = "Helmet of the Assassin's Eye",
            ItemUUID = "db6edf2d-2996-4b34-93e9-0c1ab6299704",
            EnemyName = "Heavy Chest - UD Entrance via Zhent secret passage",
            EnemyMapKey = "ee071f8e-6aeb-45a4-8c9d-4206bbf71d05",
            Equip = false
        },
        {
            ItemName = "Spiderfang Sickle",
            ItemUUID = "97e28a61-fb9e-4bc8-bfb7-119e1e4d234d",
            EnemyName = "Skeleton - Spider Cave - BP",
            EnemyMapKey = "736161e2-d963-d933-3a37-9fa3e02d9a68",
            Equip = false
        },
        {
            ItemName = "Whispering Wind Hand Crossbow",
            ItemUUID = "dfdb068d-b9b9-43c3-9258-d2bff3521e90",
            EnemyName = "Derryth B - Vendor",
            EnemyMapKey = "2b537d2a-14c8-43b3-ab71-d537c925a2a7",
            Equip = false
        },
        {
            ItemName = "Boots of the Quicksilver Serpent",
            ItemUUID = "07da6701-f4bd-4c6a-bc20-a174305ebac9",
            EnemyName = "Skeleton - Above Bibberbang - Same location as Explorers Ring",
            EnemyMapKey = "75f4da0a-cf7e-4885-856e-89bc27fca3e3",
            Equip = false
        },
        {
            ItemName = "Ring of the Assassin's Mark",
            ItemUUID = "8f767450-5eb1-4f56-a35b-1037d62a750d",
            EnemyName = "Harper Stash - Found via Toy Chest UD",
            EnemyMapKey = "e776f2aa-0a7f-40b7-a4ec-7f951c7a5724",
            Equip = false
        },
        {
            ItemName = "Gloves of the Quick Draw",
            ItemUUID = "5776ad91-44c6-410f-b4e1-f314f9686600",
            EnemyName = "Wooden Crate - Bolder Trap near Brem",
            EnemyMapKey = "f9e12146-e9fe-4877-bc95-f34dc0415ea4",
            Equip = false
        },
		        --ACT 2
        {
            ItemName = "The Fate Weaver's Knife",
            ItemUUID = "7a2ba525-1599-4476-8c51-c0e70fd11d90",
            EnemyName = "Buried Chest - LLI Honeymoon Lodge - Near Statue",
            EnemyMapKey = "443a6dbe-e60f-44f9-b359-6eb3e615ad62",
            Equip = false
        },
        {
            ItemName = "Cloak of Arachnida",
            ItemUUID = "532281af-5b13-4ac7-bdb4-5feac3da226a",
            EnemyName = "MRT Prison Evidence Chest",
            EnemyMapKey = "2008a62e-8bbb-4981-b01a-1560277a205f",
            Equip = false
        },
        {
            ItemName = "Boots of the Living Shadow",
            ItemUUID = "c746763c-526d-4d41-bd6c-d9c0b19c57cc",
            EnemyName = "Skeleton - GoS Silent Library - Behind Locked Gate",
            EnemyMapKey = "8953467d-79f6-46a4-8b90-b1b5e906a7ab",
            Equip = false
        },
        {
            ItemName = "Vest of the Trickster",
            ItemUUID = "7326d52e-3c87-4c05-b4af-630ac1475f5c",
            EnemyName = "Reinforced Gilded Chest - Mason Guild Basement",
            EnemyMapKey = "60017535-5852-4122-9f55-7416d6c60f28",
            Equip = false
        },
        {
            ItemName = "Ring of the Phantom's Mark",
            ItemUUID = "ca082267-45c3-4731-ac48-57f6a73fc070",
            EnemyName = "Loose Brock - Near Mirror of Loss - GoS",
            EnemyMapKey = "9deabd53-2879-4730-a5c1-f12ab8abd23d",
            Equip = false
        },
        {
            ItemName = "Skeleton Key",
            ItemUUID = "903bf6ec-b100-4f6f-a00b-36d3caae9277",
            EnemyName = "Harper Interrogation Victim",
            EnemyMapKey = "bd4fefdc-d466-4cea-889c-94a655a7beef",
            Equip = false
        },
        {
            ItemName = "Bloodletter's Band",
            ItemUUID = "1e28f320-6bba-4bec-9213-50fbb5ae506c",
            EnemyName = "Gilded Chest - Under Tollhouse Destructible Floor",
            EnemyMapKey = "ad935b1b-28db-4519-b344-858a0baf1432",
            Equip = false
        },
        {
            ItemName = "Shortsword of Venom",
            ItemUUID = "a1b74c86-94ce-414b-9833-783061a28651",
            EnemyName = "Skeleton - Near Graveyard Corpse Rose",
            EnemyMapKey = "f592b695-c19b-4c9b-b095-3030ec278680",
            Equip = false
        },
        {
            ItemName = "Helm of the Mists",
            ItemUUID = "c428784d-216d-4c85-a8dd-263efd162258",
            EnemyName = "Wooden Chest in Shack - Kuo-Toa Ambush",
            EnemyMapKey = "ed8b82ec-c893-41db-af8b-4be0a57e968b",
            Equip = false
        },
        {
            ItemName = "Lucky Thief's Gloves",
            ItemUUID = "37cb3e1e-bddf-4f43-be5e-86e0616f770f",
            EnemyName = "LLI Innkeeper's Lockbox",
            EnemyMapKey = "bda09d2a-9a65-47b8-ba51-d6d7ab0f6129",
            Equip = false
        },
		 --ACT 3
        {
            ItemName = "Ring of the Nightwhisper",
            ItemUUID = "06564f25-4c0a-4d38-901e-12db2a5869e0",
            EnemyName = "Pouch in Rivington Abandon House",
            EnemyMapKey = "a2904c6f-6e11-4c0c-8ae6-c1815270a5bd",
            Equip = false
        },
        {
            ItemName = "Nine Lives Stealer",
            ItemUUID = "c572eb64-d579-4b58-b318-e80a4713f496",
            EnemyName = "Buried Chest - Left side of bridge on shore of WRF",
            EnemyMapKey = "48cf3b49-2506-4c51-bae5-2fe99e410dcf",
            Equip = false
        },
        {
            ItemName = "Heartseeker's Vest",
            ItemUUID = "2260aac0-9ad5-4e03-9352-ffee7bd21f00",
            EnemyName = "Smugglers Cave Treasure Crates",
            EnemyMapKey = "9b0130c1-418c-488b-8410-fcbe9419557a",
            Equip = false
        },
        {
            ItemName = "Amulet of the Mastermind",
            ItemUUID = "0ccebc08-f289-4192-bf38-e2d73722688b",
            EnemyName = "Ferg Drogher - Vendor",
            EnemyMapKey = "b2cf2efe-ec06-48cd-8fb7-ad596d61164f",
            Equip = false
        },
        {
            ItemName = "Bracers of Flying Daggers",
            ItemUUID = "b1c1a842-0a94-4838-be66-fa707e706778",
            EnemyName = "Heavy Chest in Rivington Toy Merchants Basement",
            EnemyMapKey = "bb683167-3a41-4a28-ac1d-7ba3c1294bba",
            Equip = false
        },
        {
            ItemName = "Cloak of the Vanishing Mist",
            ItemUUID = "49ca1dee-513f-48b7-9eab-3fa17f953d4a",
            EnemyName = "Water Queens Treasure Crates",
            EnemyMapKey = "30fe6e14-ac7f-49cc-814d-fe0f79b2ecd4",
            Equip = false
        },
        {
            ItemName = "Ring of the Subtle Blade",
            ItemUUID = "a833a13a-1118-4dcd-983d-b041065618c2",
            EnemyName = "Hidden Stash - Prison",
            EnemyMapKey = "846b2fb2-4244-4641-be2a-21b5fed569d3",
            Equip = false
        },
        {
            ItemName = "The Backstabber's Blade",
            ItemUUID = "9f26b2e2-e6e3-435a-a543-d1e11a17c08f",
            EnemyName = "Opulent Chest in Guildhall Treasure Room",
            EnemyMapKey = "2257a105-14fa-4ff9-9ef5-385b1a5958df",
            Equip = false
        },
        {
            ItemName = "Helm of the First Strike",
            ItemUUID = "b30a426b-5efb-4049-a1be-279aaeb60d96",
            EnemyName = "Dolor",
            EnemyMapKey = "55837c0f-0171-4020-a4a3-dd6de7ffc134",
            Equip = false
        },
        {
            ItemName = "The Shadowdancer's Boots",
            ItemUUID = "1016960d-80e0-4c41-85ff-5697ab8a0a51",
            EnemyName = "Orin",
            EnemyMapKey = "bf24e0ec-a3a6-4905-bd2d-45dc8edf8101",
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
                -- Store the assignment in local table ModVars and update the mod variable VV_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).VV_DistributedItems = ModVars
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