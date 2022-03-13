-- =============== vRP Variables ================--
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

-- ================== Bind interface ==================--

src = {}
Tunnel.bindInterface("dz_identity", src)
vCLIENT = Tunnel.getInterface("dz_identity")

-- ===================== Comandos =====================--

RegisterCommand('identidade', function (source, args, rawCommand)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    TriggerClientEvent('dz_identity:showIdentity',source,identity.name.." "..identity.firstname,'identity',""..user_id.."",identity.age,'inssue','valid')
end)

RegisterCommand('pediridentidade', function(source, args, rawCommand)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    local nplayer = vRPclient.getNearestPlayer(source, 3)
    local nuser_id = vRP.getUserId(nplayer)
    local identityu = vRP.getUserIdentitu(nuser_id)
end)

RegisterCommand('checaridentidade', function(source, args, rawCommand)

end)

RegisterCommand('checarbiometria', function (source, args, rawCommand)
    
end)