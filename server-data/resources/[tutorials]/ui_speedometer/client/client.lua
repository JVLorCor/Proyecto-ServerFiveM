function DrawTextOnScreen(text)
    SetTextProportional(0)
    SetTextFont(1)
    SetTextEntry("STRING")
    SetTextOutline()
    AddTextComponentString(text)
    DrawText(0.8, 0.85)    
end


Citizen.CreateThread(function()
    while true do --Infinite loop
        local Speed = GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false)) * 3.6 --Convert speed to km/h

        if IsPedInAnyVehicle(PlayerPedId(), false) ~= 0 then --check if player is in a vehicle
            DrawTextOnScreen(string.format("%.1f", tostring(Speed)) .. " KM/H")
        else
            Citizen.Wait(100)
        end
        Citizen.Wait(0) -- Wait 0ms to prevent crashing
    end
end)