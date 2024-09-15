RegisterNetEvent('ch_teleporter:goto', function(targetId)
    local playerId = source
    local playerPed = GetPlayerPed(targetId)
    local targetPed = GetPlayerPed(targetId)

    if targetPed <= 0 then
        TriggerEvent('chat:addMessage', playerId,{
            args = { 'El jugador, ' .. targetId..' no está conectado' }
        })
        return
    end

    local targetPos = GetEntityCoords(targetPed)

    SetEntityCoords(playerPed, targetPos)
end
)

RegisterNetEvent('ch_teleport:summon', function(targetId)
    local playerId = source
    local playerPed = GetPlayerPed(targetId)
    local playerPos = GetEntityCoords(targetPed)
    local targetPed = GetPlayerPed(targetId)

    if targetPed <= 0 then
        TriggerEvent('chat:addMessage', playerId,{
            args = { 'El jugador, ' .. targetId..' no está conectado' }
        })
        return
    end

    SetEntityCoords(targetPed, playerPos)
end
)