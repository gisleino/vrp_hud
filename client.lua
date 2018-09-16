
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
Hclient = Tunnel.getInterface("vRP")
HUD= Tunnel.getInterface("vrp_hud","vrp_hud")

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local sede,fome = HUD.sede_fome()
        SendNUIMessage({
            showHUD = IsPauseMenuActive(),
            sede = sede,
            fome = fome
        })
    end
end)