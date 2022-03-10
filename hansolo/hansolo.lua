-- =============== vRP Variables ================--
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

-- ================== Bind interface ==================--

src = {}
Tunnel.bindInterface("dz_identity", src)
vSERVER = Tunnel.getInterface("dz_identity")