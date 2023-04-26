ESX = nil

if Config.EsxPaska then
    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(10)
        end
    end)
end
function xxx(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, false)
  end

RegisterNetEvent("autotvittuu")
AddEventHandler("autotvittuu", function ()
    if Config.alertit then

       -- xxx("~y~Automaattinen Auto Poisto \n~o~2min kuluttua", true)
        PlaySoundFrontend(-1, "HACKING_SUCCESS", 0, 1)
        --ESX.ShowNotification("~y~Automaattinen Auto Poisto \n~o~2min kuluttua")
        exports.bulletin:Send('~y~Automaattinen Auto Poisto \n~o~2min kuluttua', '15000')

        
        Citizen.Wait(60000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~1min", true)
        PlaySoundFrontend(-1, "CONTINUE", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 1)
        Citizen.Wait(15000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~45sec - mene autosi sisään tai se poistuu", true)
        Citizen.Wait(15000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~30sec - pysy autosi sisällä tai se poistuu", true)
        PlaySoundFrontend(-1, "CONTINUE", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 1)
        Citizen.Wait(200)
        PlaySoundFrontend(-1, "CONTINUE", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 1)
        Citizen.Wait(200)
        Citizen.Wait(15000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~15sec - pysy autosi sisällä", 4000)
        Citizen.Wait(5000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~10sec", 1000)
        PlaySoundFrontend(-1, "10S", "MP_MISSION_COUNTDOWN_SOUNDSET", 0, 1)
        Citizen.Wait(1000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~9sec", 1000)
        Citizen.Wait(1000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~8sec", 1000)
        Citizen.Wait(1000) 
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~7sec", 1000)
        Citizen.Wait(1000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~6sec", 1000)
        Citizen.Wait(1000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~5sec", 1000)
        Citizen.Wait(1000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~4sec", 1000)
        Citizen.Wait(1000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~3sec", 1000)
        Citizen.Wait(1000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~2sec", 1000)
        Citizen.Wait(1000)
        exports.bulletin:Send("~y~Automaattinen Auto Poisto \n~o~1sec", 1000)
        TriggerServerEvent('neekerihomo')
    end
    Citizen.Wait(1000) 
    for vehicle in EnumerateVehicles() do            
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then 
            if Config.PaskanVaa == true then
                if GetVehicleEngineHealth(vehicle) <= 100.0 then
                    SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
                    SetEntityAsMissionEntity(vehicle, false, false) 
                    DeleteVehicle(vehicle)
                    if Config.EsxPaska then
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                    DeleteVehicle(vehicle) 
                    if Config.EsxPaska then
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                    if (DoesEntityExist(vehicle)) then 
                        DeleteVehicle(vehicle) 
                        if Config.EsxPaska then
                            ESX.Game.DeleteVehicle(vehicle)
                        end
                        DeleteEntity(vehicle)
                        DeleteVehicle(vehicle)
                        if Config.EsxPaska then 
                            ESX.Game.DeleteVehicle(vehicle)
                        end
                        DeleteEntity(vehicle)
                    end
                end
            else
                SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
                SetEntityAsMissionEntity(vehicle, false, false) 
                DeleteVehicle(vehicle)
                if Config.EsxPaska then
                    ESX.Game.DeleteVehicle(vehicle)
                end
                DeleteEntity(vehicle)
                DeleteVehicle(vehicle) 
                if Config.EsxPaska then
                    ESX.Game.DeleteVehicle(vehicle)
                end
                DeleteEntity(vehicle)
                if (DoesEntityExist(vehicle)) then 
                    DeleteVehicle(vehicle) 
                    if Config.EsxPaska then
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                    DeleteVehicle(vehicle)
                    if Config.EsxPaska then 
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                end
            end
            if Config.kyt10ms then
                Citizen.Wait(10)
            end
        end
    end
    if Config.Valmis then
        PlaySoundFrontend(-1, "HACKING_SUCCESS", 0, 1)

        exports.bulletin:SendAdvanced({
            message = '',
            title = '~y~Automaattinen Auto Poisto',
            subject = '~g~\nValmis ✅',
            icon = 'JL_BD',
        })    
    end
end)
