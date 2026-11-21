--- @type RegisterVariableOptions
local opts = {
    Server = true,
    Client = false,
    WriteableOnServer = true,
    WriteableOnClient = false,
    Persistent = true,
    SyncToClient = false,
    SyncToServer = false,
    SyncOnWrite = false,
    DontCache = false
}
Ext.Vars.RegisterModVariable(ModuleUUID, "DIQMiscPatches_MOPassive", opts)
Ext.Vars.RegisterModVariable(ModuleUUID, "DIQMiscPatches_UtilitySpell", opts)
Ext.Vars.RegisterModVariable(ModuleUUID, "DIQMiscPatches_OneTimeXP", opts)

Ext.Require("Server/_Core.lua")
Ext.Require("Server/EANautiloidVoiceBarks.lua")
Ext.Require("Server/OneTimeXP.lua")
