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