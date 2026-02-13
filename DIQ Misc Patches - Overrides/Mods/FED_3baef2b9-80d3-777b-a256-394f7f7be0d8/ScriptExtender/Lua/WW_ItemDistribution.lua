PersistentVars = {
    
}

-- Register the mod variable for tracking distributed items 
Ext.Vars.RegisterModVariable(ModuleUUID, "WW_DistributedItems", {})   

local function OnSessionLoaded()    
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).WW_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to        
    local itemArray = {
        --ACT 1
        {
            ItemName = "Gloves of the Cinderbrand",
            ItemUUID = "bf23feb2-2488-4345-aed3-0a0e55b87cee",
            EnemyName = "Chest near Ochre Jelly - Grymforge",
            EnemyMapKey = "8dc01aa4-7f7a-4b4c-88b9-757d0c5501e5",
            Equip = false
        },
        {
            ItemName = "Amulet of Lost Voices",
            ItemUUID = "4630871d-95ea-4d29-8421-fcb4fe2e024a",
            EnemyName = "Arron",
            EnemyMapKey = "13db744d-8a48-4131-8801-fd5fc289fdf6",
            Equip = false
        },
        {
            ItemName = "Band of Minor Arcana",
            ItemUUID = "4c2d1e81-42fe-4609-ae67-e7654f5e052e",
            EnemyName = "Blurg",
            EnemyMapKey = "db424bf6-81ad-463d-8974-f73f1df5af09",
            Equip = false
        },
        {
            ItemName = "Professor's Ring of Intellect",
            ItemUUID = "5d13b23b-e7d1-4bec-96d1-8c9a16d3130a",
            EnemyName = "Piddle",
            EnemyMapKey = "5f5c8416-8118-4619-8fc9-442304ff0a3d",
            Equip = false
        },
        {
            ItemName = "Boots of the Frostwalker",
            ItemUUID = "bdf99609-c8b4-4aeb-b12d-546d5c22f636",
            EnemyName = "Festering Cove - Submerged Heavy Chest",
            EnemyMapKey = "df9de5a2-1365-4b3a-9ab0-484d13838739",
            Equip = false
        },
        {
            ItemName = "Cloak of the Reaper's Harvest",
            ItemUUID = "7c116037-16e9-4e3e-bd4c-966a57919875",
            EnemyName = "Dror Ragzlin treasure pile",
            EnemyMapKey = "53392dc8-8627-4455-bae8-de4834cd7e31",
            Equip = false
        },
        {
            ItemName = "Staff of Whispering Thoughts",
            ItemUUID = "228456b1-5bd6-48c0-bcec-3570b16947c2",
            EnemyName = "Underdark - Spectator",
            EnemyMapKey = "39ff8241-fadd-4fbe-ab89-fc5a8b7638a0",
            Equip = false
        },
        {
            ItemName = "Frostfire Crossbow",
            ItemUUID = "1e66c6cc-36a3-4fc0-ac70-6e766a4a0dd1",
            EnemyName = "Mountain Pass - Heavy Chest",
            EnemyMapKey = "72c8e07e-1a17-4d10-9f13-93ddd1c52eab",
            Equip = false
        },
        {
            ItemName = "Robe of the Arcane Duelist",
            ItemUUID = "7a7baaed-6bb2-4db2-b9e8-b7c251453ce1",
            EnemyName = "Quelenna",
            EnemyMapKey = "0f4300f6-0e1e-4d6c-a582-5da588d64ea7",
            Equip = false
        },
        {
            ItemName = "Circlet of Prismatic Resonance",
            ItemUUID = "eec193f0-9f95-4bd5-b135-14dfb4ae19f4",
            EnemyName = "Cefrey",
            EnemyMapKey = "81e99fb9-2a52-4a26-910d-a637c379f15b",
            Equip = false
        },
		--ACT 2
        {
            ItemName = "Forceweaver's Gauntlets",
            ItemUUID = "14f5b5a4-4d8c-47c2-afc8-837fbc253f87",
            EnemyName = "Wooden Chest near Olivers Shed",
            EnemyMapKey = "cf793cf8-7024-420a-844f-2773761840d2",
            Equip = false
        },
        {
            ItemName = "Spell Bottle",
            ItemUUID = "e83020ad-f2c3-41c8-9174-11a285e1be19",
            EnemyName = "Balthazar",
            EnemyMapKey = "53651a9f-7ea8-444f-ba2d-224390b72f7d",
            Equip = false
        },
        {
            ItemName = "Ring of Fireballs",
            ItemUUID = "e1c0df90-e683-48f7-b5bb-7c3359d644be",
            EnemyName = "Kansif",
            EnemyMapKey = "f9522205-623f-4a82-904a-128b26182707",
            Equip = false
        },
        {
            ItemName = "Ring of the Stalwart Scholar",
            ItemUUID = "2f82f078-341e-4406-818c-cb05ad305655",
            EnemyName = "Susdera",
            EnemyMapKey = "ebfd7bc7-0fd5-4dee-8fd5-308ded4d0a65",
            Equip = false
        },
        {
            ItemName = "Boots of the Icy Blink",
            ItemUUID = "ee73b60c-48ee-4f87-8985-3f5b3697626e",
            EnemyName = "Opulent Chest - Balthazar Secret Room MRT",
            EnemyMapKey = "2074503c-8854-49c6-9e1d-3e296299c3f4",
            Equip = false
        },
        {
            ItemName = "Shroud of the Shadow Weaver",
            ItemUUID = "ad46c457-d2b1-4f1d-98d6-6d5a3cbc985f",
            EnemyName = "Kressa Bonedaughter",
            EnemyMapKey = "6068a46e-bbe4-4fc6-b955-cd8886fa5542",
            Equip = false
        },
        {
            ItemName = "Staff of the Arcanist's Charge",
            ItemUUID = "1889de82-4e01-46d0-8b34-9a791083b0c1",
            EnemyName = "Duckie Verish",
            EnemyMapKey = "67e8eb20-2428-4c24-bdbd-bb19b962182a",
            Equip = false
        },
        {
            ItemName = "Crossbow of Elemental Bane",
            ItemUUID = "6a3ea878-b624-4792-8f89-8c861ead1da8",
            EnemyName = "Talli",
            EnemyMapKey = "f769815c-d437-4a45-9ae4-aebd53ec8f7c",
            Equip = false
        },
        {
            ItemName = "Robe of the Crimson Conduit",
            ItemUUID = "e3193f37-814d-4782-aca3-d4d05af9b1e9",
            EnemyName = "Intelligent Sentinel",
            EnemyMapKey = "9ee1ee98-14f2-41cd-9207-98700fffa2fa",
            Equip = false
        },
        {
            ItemName = "The Sage's Cap",
            ItemUUID = "ced477a2-9810-45bb-9c63-bbd813e7414f",
            EnemyName = " Dal Lightspark's﻿ corpse - near﻿ He Who Was",
            EnemyMapKey = "3bdf3c08-b85c-4eae-8e8d-0d9456b9f7a1",
            Equip = false
        },
		--ACT 3
        {
            ItemName = "Gloves of the Burning Sky",
            ItemUUID = "dab77a1b-d870-4401-8cf4-484d663062eb",
            EnemyName = "Lorroakan",
            EnemyMapKey = "a9d4b71d-b0ef-429e-8210-6dc8be986ee9",
            Equip = false
        },
        {
            ItemName = "Amulet of Arcane Renewal",
            ItemUUID = "3b56d226-e02c-4907-bd50-06f028291977",
            EnemyName = " Wyrm's Crossing Smuggler Cave Trap - Backpack﻿",
            EnemyMapKey = "c990106f-f9d1-4012-a397-64037017c290",
            Equip = false
        },
        {
            ItemName = "Ring of Arcane Surge",
            ItemUUID = "11b1bbe2-18d4-462b-b77b-dfc540c89fb4",
            EnemyName = "Grice",
            EnemyMapKey = "464de2ba-ac0b-4fa8-bfa5-d8349ccbebf8",
            Equip = false
        },
        {
            ItemName = "Band of the Ascendant Spellcaster",
            ItemUUID = "1a7cb8cd-9953-4d6c-8652-cd863316aefc",
            EnemyName = "Heavy Chest﻿ - Blushing Mermaid Basement",
            EnemyMapKey = "6e969ce2-48b5-49e1-9bce-e95d248fbc7c",
            Equip = false
        },
        {
            ItemName = "Boots of the Shifting Elements",
            ItemUUID = "e81e4d34-52eb-41ae-8f92-0897ef0486f8",
            EnemyName = "Flaming Fist Vault﻿ - Wyrm's Rock Fortress",
            EnemyMapKey = "939a5178-3038-4a3b-b64b-9df3b7b6c117",
            Equip = false
        },
        {
            ItemName = "Cloak of Arcane Vitality",
            ItemUUID = "d320c92d-509f-4cd2-ab81-e7946b4f568f",
            EnemyName = "Stylin' Horst",
            EnemyMapKey = "208167c3-e4ea-4308-b232-97236b1738ec",
            Equip = false
        },
        {
            ItemName = "Netherese Staff",
            ItemUUID = "ed188ba5-2d79-4f8a-a0c1-14cbec5a8c3c",
            EnemyName = "Vault #2",
            EnemyMapKey = "eacbddbe-676a-4b5e-8e95-338de36dc10a",
            Equip = false
        },
        {
            ItemName = "Arcanum Repeater",
            ItemUUID = "f0f8a400-724f-4178-8ade-6eb4955e6f74",
            EnemyName = "Flaming Fist Ivarus",
            EnemyMapKey = "cbf95410-351a-491e-92aa-1663df98c6f5",
            Equip = false
        },
        {
            ItemName = "Mystra's Lost Robe",
            ItemUUID = "bd802d1d-c8a9-4e48-b2eb-2b0c6bca90b9",
            EnemyName = "Gilded Chest﻿ in the Djinni Lamp",
            EnemyMapKey = "dbc0d1a9-9a07-4759-9926-5688856db288",
            Equip = false
        },
        {
            ItemName = "Hood of the Archmage",
            ItemUUID = "66efb63c-f506-435d-b2cc-618b6695972b",
            EnemyName = "Opulent Chest﻿ in Cazadors Ballroom",
            EnemyMapKey = "e029b3ca-94be-4d38-a6f7-0d673b1f7312",
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
                -- Store the assignment in local table ModVars and update the mod variable WW_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).WW_DistributedItems = ModVars
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
        local WW_EquipmentSlots = {
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
        return WW_EquipmentSlots[slot + 1]
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