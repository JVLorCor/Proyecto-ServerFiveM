-- command to go to another player
--goto
RegisterCommand("goto", function(_,args)
    local targetId = args[1]

    if not targetId then
        TriggerEvent('chat:addMessage', {
            args = { 'Añade un ID', },
        })
        return
    end

    TriggerServerEvent('ch_teleporter:goto', targetId)
end)

-- comand to bring a player to you
--summon
RegisterCommand("summon", function(_,args)
    local targetId = args[1]

    if not targetId then
        TriggerEvent('chat:addMessage', {
            args = { 'Añade un ID' }
        })
        return
    end

    TriggerServerEvent('ch_teleporter:summon', targetId)
end)

-- command to go to a specific location
--gotopos

RegisterNetEvent('ch_teleporter:tp', function(targetCoordinates)
    local playerPed = PlayerPedId()

    SetEntityCoords(playerPed, targetCoordinates)
end)
