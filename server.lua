ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('onResourceStart', function(resource)
    TriggerClientEvent("Tms:Chargement","OpenMenu")
end)