-- Notifications:

function showNotification(message, color, flash, saveToBrief)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    ThefeedNextPostBackgroundColor(color)
    EndTextCommandThefeedPostTicker(flash, saveToBrief)
end

RegisterCommand('testNotification', function(_, _, rawCommand)
    showNotification(
        rawCommand,
        130,
        true,
        true
    )
end)



-- Advanced Notifications:

function showAdvancedNotification(message, sender, subject, textureDict, iconType, saveToBrief, color)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    ThefeedNextPostBackgroundColor(color)
    EndTextCommandThefeedPostMessagetext(textureDict, textureDict, false, iconType, sender, subject)
    EndTextCommandThefeedPostTicker(false, saveToBrief)
end

RegisterCommand('testAdvancedNotification', function(_, _, rawCommand)
    showAdvancedNotification(
        rawCommand,
        'Test is Sender',
        'This is Subject',
        'CHAR_AMMUNATION',
        8,
        true,
        130
    )
end)

-- Alerts:

function showAlerts(message, beep, duration)
    AddTextEntry('CH_ALERT', message)

    BeginTextCommandDisplayHelp('CH_ALERT')
    EndTextCommandDisplayHelp(0, false, beep, duration)
end

RegisterCommand('testAlert', function(_, _, rawCommand)
    showAlerts(
        rawCommand,
        true,
        -1
    )
end)

-- Markers:

RegisterCommand('testMarker', function()
    CreateThread(function()
        local start= GetGameTimer()

        while GetGameTimer() < (start + 10000) do
            Wait(0)

            local playerCoordinates = GetEntityCoords(PlayerPedId())

            DrawMarker(6, playerCoordinates.x, playerCoordinates.y, playerCoordinates.z + 1.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 220, 180, true, true, 2)
        end
    end)
end)

-- Subtitles:

-- Busy Spinners:

-- Text Input: