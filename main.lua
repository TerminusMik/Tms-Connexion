ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local CameraCoords = {coords = vector3(-237.88, -832.78, 365.70)}
local PlayerLoaded   = false
local MenuOpen = false
local TmsConnexionMenu = RageUI.CreateMenu("Chargement", "~y~Sun~w~Rise Chargement de votre personnage")
TmsConnexionMenu:SetRectangleBanner(42, 48, 48, 255)

TmsConnexionMenu.Closed = function()
    MenuOpen = false
end

function TmsCharment()
    if MenuOpen then
        MenuOpen = false
        return
    else
        MenuOpen = true
        RageUI.Visible(TmsConnexionMenu, true)

            while MenuOpen do
                RageUI.IsVisible(TmsConnexionMenu, function()
                    DestroyAllCams(true)
                    Cam()
                    if IsControlJustPressed(1,22) then 
                    ResetEntityAlpha(coords)
                    RenderScriptCams(0, 1, 9500, 1, 1)
                    RageUI.CloseAll()
                    DoScreenFadeOut(7500)
                    Wait(8500)
                    DestroyCam(cam, true)
                    DoScreenFadeIn(1500)
                    TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_STAND_MOBILE", 0, 0)
                    Wait(4000)
                    ClearPedTasks(GetPlayerPed(-1))
                    ESX.ShowNotification("~s~~h~Chargement de votre personnage fini !\nBienvenue à ~y~Sun~s~Rise", 25)
                    end

                    RageUI.Button("Appuyer ~o~ESPACE~s~ pour continuer", nil, { RightLabel = "" },true, {
                        onSelected = function()
                        end
                    });


            end, function()
            end)
        Wait(0)
        end
    end
end

Citizen.CreateThread(function()
    while true do 
        Wait(0)
        TmsCharment()
    end
end)

function Cam()
    local coords = GetEntityCoords(GetPlayerPed(-1))
    cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", 1)
    SetCamCoord(cam, CameraCoords.coords)
    PointCamAtEntity(cam, ped, 0, 0, 0, 1)
    RenderScriptCams(1, 1, 9500, 1, 1)
   SetCamShakeAmplitude(cam, 3.0)
   SetEntityAlpha(coords, 150, 150)
end



