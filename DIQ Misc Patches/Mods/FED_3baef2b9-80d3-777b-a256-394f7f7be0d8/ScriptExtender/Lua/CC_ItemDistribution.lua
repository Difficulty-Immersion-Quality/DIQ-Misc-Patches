PersistentVars = {
    
}

-- Register the mod variable for tracking distributed items 
Ext.Vars.RegisterModVariable(ModuleUUID, "CC_DistributedItems", {})   

local function OnSessionLoaded()    
    local ModVars = {}
    ModVars = Ext.Vars.GetModVariables(ModuleUUID).CC_DistributedItems or {}

    -- Array of items and the respective enemies they are to be assigned to        
    local itemArray = {
        --ACT 1
        {
            ItemName = "Essence Weaver's Gloves",
            ItemUUID = "3f1b505b-1e16-4460-ac74-f4bec4754f2a",
            EnemyName = "Shabby Wardrobe - 2nd floor in Aunti's House",
            EnemyMapKey = "655333cd-32a6-41ce-b1b1-2edb74e23317",
            Equip = false
        },
        {
            ItemName = "Boots of Arcane Haste",
            ItemUUID = "40816188-10ac-4e10-97b1-f0ebd42ba974",
            EnemyName = "Heavy Chest overlooking Grym - near waypoint",
            EnemyMapKey = "1597d73d-a377-4486-9186-354d7aed8c62",
            Equip = false
        },
        {
            ItemName = "Mantle of the Spell Current",
            ItemUUID = "c4263bb3-e81b-4648-a607-741780a249bc",
            EnemyName = "Argram on boat to Grymforge",
            EnemyMapKey = "2243e892-f360-44cf-b2ef-90364059dd22",
            Equip = false
        },
        {
            ItemName = "Robe of Shared Essence",
            ItemUUID = "38b8043b-da82-483d-a938-85f68ec7553b",
            EnemyName = "Buried Chest near Petrified Drow",
            EnemyMapKey = "603e0c53-d27c-48fa-a974-4609638cf07a",
            Equip = false
        },
        {
            ItemName = "Hat of Rebounding Force",
            ItemUUID = "b92cd2f9-70c9-4bed-9044-b710be68200b",
            EnemyName = "Buried Chest near Mountain Pass - Above goblin village",
            EnemyMapKey = "617325a8-cb5e-4a1c-83ba-dcad38d09247",
            Equip = false
        },
        {
            ItemName = "Pendant of Arcane Augmentation",
            ItemUUID = "28fd8a38-fd95-4ba2-bad6-a5dc0e25e2e4",
            EnemyName = "Bernard",
            EnemyMapKey = "5038c0f2-0022-4699-82ce-a319b30616bb",
            Equip = false
        },
        {
            ItemName = "Metamagic Band",
            ItemUUID = "3a8370d1-0cf8-4135-8aa1-4bf9c6983f95",
            EnemyName = "Wooden Chest in Bird Nest - UD",
            EnemyMapKey = "55a460d7-a082-43d5-90a9-25689e67324c",
            Equip = false
        },
        {
            ItemName = "Ring of Subtle Sorcery",
            ItemUUID = "78fffa71-3fda-411f-9a67-1a31e7ecae4f",
            EnemyName = "Omelumm",
            EnemyMapKey = "1f9937ef-9207-4db6-a833-e4083d571f53",
            Equip = false
        },
        {
            ItemName = "Light Crossbow of the Spellstorm",
            ItemUUID = "ddc9b729-f79a-4112-8a44-e410d877fcb0",
            EnemyName = "Gnuril",
            EnemyMapKey = "c76d7d19-3d46-44e5-a914-80efc8cac4ea",
            Equip = false
        },
        {
            ItemName = "Staff of Arcane Resonance",
            ItemUUID = "8cf2997a-6f7e-4919-927c-0eeef72db779",
            EnemyName = "Wooden Chest in Arcane Tower - near bed",
            EnemyMapKey = "4bb9c983-b1de-4d90-bf20-abbb0c721472",
            Equip = false
        },
		        --ACT 2
        {
            ItemName = "Gloves of the Arcanist's Gambit",
            ItemUUID = "8b405cdf-d0a3-414a-8758-14b951968331",
            EnemyName = "Chest near Shadow ambushing Rolan",
            EnemyMapKey = "bc5a7819-a78b-4a2f-93f7-0dbc315120b3",
            Equip = false
        },
        {
            ItemName = "Boots of the Shifting Currents",
            ItemUUID = "6ed94c6f-cffc-49d1-bd5b-ac83ebc15a36",
            EnemyName = "Heavy Chest by Tollhouse Canoes",
            EnemyMapKey = "69e9cc98-4550-459f-8c32-59d62e5ed558",
            Equip = false
        },
        {
            ItemName = "Cloak of the Sorcerous Soul",
            ItemUUID = "ced16d61-ce2d-4bb8-823d-ad4997cb45da",
            EnemyName = "Wooden Chest above Shambling Mound",
            EnemyMapKey = "1c0f7fe3-d7d0-4e95-9f90-1106a8343770",
            Equip = false
        },
        {
            ItemName = "Robe of the Arcane Shroud",
            ItemUUID = "957ac20c-c552-4957-8569-826dc8544507",
            EnemyName = "Mindflayer in MFC in Pod",
            EnemyMapKey = "08d7a7f5-4d33-4000-b2f7-7c0cf6053a89",
            Equip = false
        },
        {
            ItemName = "Hat of Font Surge",
            ItemUUID = "95b63880-1fff-49b2-8225-bb553209642f",
            EnemyName = "Buried Chest overlooking Olivers Hut",
            EnemyMapKey = "a261d11a-fbd1-4e87-82b9-52f75c593b40",
            Equip = false
        },
        {
            ItemName = "Pouch of Sorcerous Sand",
            ItemUUID = "efa2258e-070e-4d74-a20e-3034bd369a05",
            EnemyName = "Bagidas Diary Pouch",
            EnemyMapKey = "9d92442d-a914-4361-8197-5844b00a3055",
            Equip = false
        },
        {
            ItemName = "Ring of Sorcerous Supremacy",
            ItemUUID = "5cb35d8c-2cef-476c-9421-1450126c3d2a",
            EnemyName = "Gilded Chest found in Tollhouse secret basement",
            EnemyMapKey = "2ee31297-515c-4176-b958-3f5a098264f4",
            Equip = false
        },
        {
            ItemName = "Band of Arcane Echoes",
            ItemUUID = "8065f592-8420-4e11-8129-16d635eba3d0",
            EnemyName = "Gilded Chest by Cloaker",
            EnemyMapKey = "cde25069-f45b-455a-81ec-99f56818d384",
            Equip = false
        },
        {
            ItemName = "Light Crossbow of Arcane Amplification",
            ItemUUID = "0c0876b3-f270-4893-9981-98df6c4ab547",
            EnemyName = "Araj",
            EnemyMapKey = "511c9413-25fe-449c-a81d-4b09bc20745a",
            Equip = false
        },
        {
            ItemName = "Quarterstaff of the Twisted Weave",
            ItemUUID = "b7c4b386-0223-4fb3-b893-b543887b7706",
            EnemyName = "Buried Chest MRT Prison Cell - Far",
            EnemyMapKey = "8c63026c-236b-4e40-ab68-a7bb29469bc5",
            Equip = false
        },
		 --ACT 3
        {
            ItemName = "Gloves of Sorcerous Might",
            ItemUUID = "16dee58e-5df5-4f15-ae3e-3e81d4ce0cf1",
            EnemyName = "Opulent Chest in Lodge Vault",
            EnemyMapKey = "fb73e817-2469-44e6-9cea-30a2b24914e3",
            Equip = false
        },
        {
            ItemName = "Shoes of the Spatial Swap",
            ItemUUID = "6f841d29-d5b6-4e4e-9830-95a87789cedc",
            EnemyName = "Stylin Horst",
            EnemyMapKey = "208167c3-e4ea-4308-b232-97236b1738ec",
            Equip = false
        },
        {
            ItemName = "Cape of the Fluctuating Ward",
            ItemUUID = "9a713c58-6e64-4d4e-92b2-526068415173",
            EnemyName = "Invisible Opulent Chest - Pyro Hat",
            EnemyMapKey = "82521a55-6ded-41b1-b843-1868e3f10051",
            Equip = false
        },
        {
            ItemName = "Robe of Ethereal Threads",
            ItemUUID = "8395008d-7c86-4007-8cfd-a770c592aa4b",
            EnemyName = "Shabby Wardrobe in Carms Garm",
            EnemyMapKey = "45e1d7ad-fc8b-47e3-ba9e-dcaeaa3228ec",
            Equip = false
        },
        {
            ItemName = "Hood of Spell Mastery",
            ItemUUID = "efca344b-0759-4641-9031-012175f5fef3",
            EnemyName = "Buried Chest behind Sorcerous Sundries",
            EnemyMapKey = "eb1d833a-1248-4835-82a4-4b5441939d94",
            Equip = false
        },
        {
            ItemName = "Amulet of the Infinite Wellspring",
            ItemUUID = "15996aa6-5888-4fa9-8797-e3d75d4c517d",
            EnemyName = "Ptaris",
            EnemyMapKey = "10403a03-aa9c-4c68-8a52-cbb381627906",
            Equip = false
        },
        {
            ItemName = "Sphere of Controlled Chaos",
            ItemUUID = "e14246b7-0966-41fc-93af-952ca6a30458",
            EnemyName = "Thayan Trunk in Vonayns Basement",
            EnemyMapKey = "e484475e-d1b9-4daa-9fe6-06b6e2e7cb91",
            Equip = false
        },
        {
            ItemName = "Grimoire of the First Sorcerer",
            ItemUUID = "bacfd3fd-0106-4c5e-a5ff-668cc51baec1",
            EnemyName = "Mystic Carrion",
            EnemyMapKey = "b003409c-364f-4065-94bf-7436001d890e",
            Equip = false
        },
        {
            ItemName = "Staff of Channeled Power",
            ItemUUID = "95b51bfb-09e2-402d-834c-212cac6e335e",
            EnemyName = "Siryasius Aelis",
            EnemyMapKey = "5a4f7f77-43c9-4f84-b3f4-4076d876ccde",
            Equip = false
        },
        {
            ItemName = "Amethyst Heartstone",
            ItemUUID = "4a6b2669-6ea4-4715-8c8b-a06dc54956e4",
            EnemyName = "Hidden Safe in Steel Foundry",
            EnemyMapKey = "926fd0d3-b015-4d55-87b4-bdd4fb63a851",
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
                -- Store the assignment in local table ModVars and update the mod variable CC_DistributedItems
                ModVars[item.ItemName:gsub('%W','') .. item.EnemyName:gsub('%W','')] = true
                Ext.Vars.GetModVariables(ModuleUUID).CC_DistributedItems = ModVars
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
        local CC_EquipmentSlots = {
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
        return CC_EquipmentSlots[slot + 1]
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