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
local enable = false

-- ================== Bind interface ==================--

RegisterNetEvent("dz_identity:showIdentity")
AddEventHandler("dz_identity:showIdentity", function (name, identity, passport, age, phone, valid)
    enable = true
    SendNUIMessage({
        action = "show",
        name = name,
        identity = identity,
        passport = passport,
        age = age,
        phone = phone,
        valid = valid
    })
end)

RegisterNUICallback("close",function(data)
    enable = false
    SendNUIMessage({
        action = "hide",
        name = "",
        identity = "",
        passport = "",
        age = "",
        phone = "",
        valid = ""
    })
end)

Citizen.CreateThread(function ()
    while true do
        Wait(0)
        if IsControlPressed(0,344) then
            if enable then
                enable = false
                SendNUIMessage({
                    action = "hide",
                    name = "",
                    identity = "",
                    passport = "",
                    age = "",
                    phone = "",
                    valid = ""
                })
                Wait(200)
            else
                enable = true
                vSERVER.showSelfIdentity()
                Wait(200)
            end
        end
    end
end)