local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

HServer = {}
vRP = Proxy.getInterface("vRP")
Hclient = Tunnel.getInterface("vRP")
Tunnel.bindInterface("vrp_hud",HServer)

function HServer.sede_fome()
    user_id = vRP.getUserId(source)
    return vRP.getThirst(user_id),vRP.getHunger(user_id)
end