-- =============== vRP Variables ================--
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

-- ================== Bind interface ==================--

src = {}
Tunnel.bindInterface("dz_identity", src)
vSERVER = Tunnel.getInterface("dz_identity")

-- ================== Bind interface ==================--

local fakeName = ""
local fakeIdentity = ""
local fakeAge = ""
local fakeInssue = ""

-- ================== Bind interface ==================--

RegisterNetEvent("dz_identity:showIdentity")
AddEventHandler("dz_identity:showIdentity", function (name, identity, passport, age, inssue, valid)
    print('aqui chego')
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "show",
        name = name,
        identity = identity,
        passport = passport,
        age = age,
        inssue = inssue,
        valid = valid
    })
end)