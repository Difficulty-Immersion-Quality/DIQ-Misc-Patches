PersistentVars = {
    
}

-- Register the mod variable for tracking distributed items 
Ext.Vars.RegisterModVariable(ModuleUUID, "OO_DistributedItems", {})   

local function OnSessionLoaded()    
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).OO_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to        
    local itemArray = {
        --ACT 1
        {
            ItemName = "Gauntlets of the Divine Herald",
            ItemUUID = "38dc51ea-786e-4b8b-a203-c9628a51bb08",
            EnemyName = "Skeleton under bridge between Blighted Village and Risen Road",
            EnemyMapKey = "c0c5e34d-24b5-476e-b5a0-09d55674176b",
            Equip = false
        },
        {
            ItemName = "Greaves of the Smiter",
            ItemUUID = "6255eb13-edbb-4592-aa96-e7c7927ba3a1",
            EnemyName = "Buried Chest by Arcane Tower Sussur Tree",
            EnemyMapKey = "2dc0fb37-5187-494a-b5f4-7338db86e32f",
            Equip = false
        },
        {
            ItemName = "Smite-Guard Cloak",
            ItemUUID = "7060698b-55a9-46f3-8ae2-d135f896da3f",
            EnemyName = "Grym",
            EnemyMapKey = "2a5997fc-5f2a-4a13-b309-bed16da3b255",
            Equip = false
        },
        {
            ItemName = "Breastplate of the Monster Slayer",
            ItemUUID = "65cd87b7-122d-4807-97e9-a24956922e2a",
            EnemyName = "Heavy Chest near UD Minotaur in pile of debris",
            EnemyMapKey = "08aaea6f-540e-494a-816b-47e2f3163d73",
            Equip = false
        },
        {
            ItemName = "Helm of the Vigilant Watchman",
            ItemUUID = "087e6590-e3f8-4391-a07a-cf8b03643634",
            EnemyName = "Wooden Chest in room where Halsin is in prison",
            EnemyMapKey = "df84eea2-63d4-485e-9fd4-e4b264c88827",
            Equip = false
        },
        {
            ItemName = "Amulet of Healing Light",
            ItemUUID = "86f819d9-3ca6-40b1-8faa-f425468c8502",
            EnemyName = "Gilded Chest at Rosymorn - Same room as Guardian of Faith",
            EnemyMapKey = "d1b12d62-37b4-435e-a3f6-87f217fa9951",
            Equip = false
        },
        {
            ItemName = "Reliquary of the Devout",
            ItemUUID = "06dca937-e98d-45e5-ae44-5ccd5bde1bce",
            EnemyName = "Anders",
            EnemyMapKey = "a43d1d6c-d397-4d2d-adb4-ead3b10cb189",
            Equip = false
        },
        {
            ItemName = "Band of the Radiant Burst",
            ItemUUID = "d1ee36c0-539b-45ec-bac0-8b4460393dfa",
            EnemyName = "Same location as Dawnmasters Crest",
            EnemyMapKey = "fe520e48-2caa-421d-948c-30fa84c690ce",
            Equip = false
        },
        {
            ItemName = "Mace of the Aura of Reproach",
            ItemUUID = "57100b8a-90bc-4f75-b156-b607e7e39e0c",
            EnemyName = "Skeleton in Sussur Equipment Forge Room - Blighted Village",
            EnemyMapKey = "3e8a25ff-187a-4d11-a052-c9e8d7458780",
            Equip = false
        },
        {
            ItemName = "Greatsword of the Smite-Weaver",
            ItemUUID = "122ceef7-8653-4442-a569-0d78789dd665",
            EnemyName = "Heavy Chest outside Arcane Tower by Blacksmith",
            EnemyMapKey = "c02cdd47-28c7-413f-b556-95e6a7329dae",
            Equip = false
        },
		        --ACT 2
        {
            ItemName = "Gauntlets of Heroic Sacrifice",
            ItemUUID = "ecadd412-aed5-4d3e-aa9e-2d3886cb9581",
            EnemyName = "Brinn",
            EnemyMapKey = "1a7719bc-9f42-4405-a07d-5d54af11ef0b",
            Equip = false
        },
        {
            ItemName = "Boots of Celestial Protection",
            ItemUUID = "309fea76-3355-4459-8ac3-b368bfbdd17c",
            EnemyName = "Heavy Chest near Broken Refugee Cart",
            EnemyMapKey = "3a282d05-0bdf-4f40-a668-8622b9da2a7c",
            Equip = false
        },
        {
            ItemName = "Cloak of the Smiter's Boon",
            ItemUUID = "1f275bcd-9cb7-4b9b-94c6-68924afa0e33",
            EnemyName = "Arden",
            EnemyMapKey = "5d1de164-5969-4593-87b7-1fcb5b54f00f",
            Equip = false
        },
        {
            ItemName = "Breastplate of Celestial Judgment",
            ItemUUID = "01e5a294-8bb3-492f-84e0-f509f2817f43",
            EnemyName = "Heavy Chest MRT Roof - Same location as Exalted Marrow",
            EnemyMapKey = " 25d7692c-7ba3-4f9e-ba8c-ebd6cf97ca65",
            Equip = false
        },
        {
            ItemName = "Helm of the Fiend Hunter",
            ItemUUID = "3f96fe30-4c29-4979-b527-9eb3c3545c87",
            EnemyName = "Heavy Chest in room before meeting Balthazar",
            EnemyMapKey = "6a0a1921-ab8e-48c0-8781-9b102d76bb61",
            Equip = false
        },
        {
            ItemName = "Amulet of Sacred Recovery",
            ItemUUID = "f59f8033-5edf-431a-bbda-734c6257a9e9",
            EnemyName = "Skeleton in bird nest on the roof of House of Healing",
            EnemyMapKey = "53614f63-3e69-4164-83b2-c846fddaa451",
            Equip = false
        },
        {
            ItemName = "Ring of Healing Light",
            ItemUUID = "e1044761-419f-43db-925c-8f6a9fbcafb6",
            EnemyName = "Heavy Chest on the South Short of LLI",
            EnemyMapKey = "81a324b9-153d-40ed-9b94-345b9bb68f56",
            Equip = false
        },
        {
            ItemName = "Ring of Faint Turning",
            ItemUUID = "8c241a18-9505-4beb-934e-9aba35b50d22",
            EnemyName = "Buried Chest in Mausoleum - Same room as Vivacious Cloak",
            EnemyMapKey = "40edd247-d65a-42f4-af01-cc70d4740704",
            Equip = false
        },
        {
            ItemName = "Holy Avenger's Longsword",
            ItemUUID = "59545d81-570b-4857-bf0d-a4d81dafe802",
            EnemyName = "Ketheric Thorm",
            EnemyMapKey = "bc4b5efc-cbd3-4f8f-a31e-d37f801a038c",
            Equip = false
        },
        {
            ItemName = "Holy Maul of Binding",
            ItemUUID = "4e681b09-d33c-4a0f-aca9-66b5b7930341",
            EnemyName = "Hoarding Merregon",
            EnemyMapKey = "fbbf364f-5da0-4d60-86e4-ecf68da8fb25",
            Equip = false
        },
		 --ACT 3
        {
            ItemName = "Gauntlets of Celestial Haste",
            ItemUUID = "2c67cccc-d0a7-4381-b8f9-129538fed745",
            EnemyName = "Buried Chest near Broken Status in Rivington",
            EnemyMapKey = "c269c8d8-183b-47f1-8381-bca653c46939",
            Equip = false
        },
        {
            ItemName = "Greaves of Searing Light",
            ItemUUID = "6214c5e0-21d2-44b5-8477-6b88396625f9",
            EnemyName = "Brammels",
            EnemyMapKey = "ae3168fe-dd18-421b-aa51-4d86d1245871",
            Equip = false
        },
        {
            ItemName = "Cloak of Sacred Power",
            ItemUUID = "2916650c-5646-4cdc-994a-e9582c287697",
            EnemyName = "WyrmCrossing Watchtower 2nd Floor",
            EnemyMapKey = "05c66280-1e46-4c74-bab0-78624a84517e",
            Equip = false
        },
        {
            ItemName = "Breastplate of the Radiant Defender",
            ItemUUID = "b4112f8f-0cf3-4cae-9496-f730481f5ce7",
            EnemyName = "Offering Chest - Same location as Devout Amulet",
            EnemyMapKey = "8c43197d-6bfa-4ddf-9ee5-d3f75b1444d3",
            Equip = false
        },
        {
            ItemName = "Helm of the Holy Crusader",
            ItemUUID = "53974a22-355b-405b-b5c2-1a24d89a4871",
            EnemyName = "Ulumpha",
            EnemyMapKey = "2eda24ed-9fca-4020-b514-4e041a1247f8",
            Equip = false
        },
        {
            ItemName = "Shield of Sacred Ire",
            ItemUUID = "73ff4fe3-1193-4d9a-b8cb-02f475de8c2a",
            EnemyName = "Vicar Humbletoes",
            EnemyMapKey = "32ec6ad3-c085-4fc5-943b-e2e3a05d9f2b",
            Equip = false
        },
        {
            ItemName = "Holy Symbol of Everlight",
            ItemUUID = "18e160e1-88bc-48b0-8d1a-006fb9bce531",
            EnemyName = "Chrai Harrak",
            EnemyMapKey = "54467aa9-33dd-41c4-bd77-87a71ed22c16",
            Equip = false
        },
        {
            ItemName = "Chalice of Divine Grace",
            ItemUUID = "8dc346d3-91d1-447f-9de2-0ac9022d3f7e",
            EnemyName = "Display Case in WRF near Black Hand Gloves",
            EnemyMapKey = "ae6c1a28-6206-4ff6-8e15-af2e3c29335c",
            Equip = false
        },
        {
            ItemName = "Orb of Celestial Wrath",
            ItemUUID = "769df1bf-84a4-4efc-b608-a22bbe2a6989",
            EnemyName = "Cazador Szarr",
            EnemyMapKey = "2f1880e6-1297-4ca3-a79c-9fabc7f179d3",
            Equip = false
        },
        {
            ItemName = "Oathkeeper's Blade",
            ItemUUID = "eca71f1f-d74b-4f9a-9159-00c9fa1b0247",
            EnemyName = "That Which Guards",
            EnemyMapKey = "c16a1ebd-4390-4309-b5d5-30df6e1333f6",
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
                -- Store the assignment in local table ModVars and update the mod variable OO_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).OO_DistributedItems = ModVars
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
        local OO_EquipmentSlots = {
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
        return OO_EquipmentSlots[slot + 1]
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