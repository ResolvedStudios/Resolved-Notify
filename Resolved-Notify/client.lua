-- Client-Only Notification Event
RegisterNetEvent('customNotify:Send')
AddEventHandler('customNotify:Send', function(type, message, duration)
    SendNUIMessage({
        action = 'show',
        type = type,
        message = message,
        duration = duration or 3000,
        sound = "notify"
    })
end)

-- Global Notification Event (All Players)
RegisterNetEvent('customNotify:SendToAll')
AddEventHandler('customNotify:SendToAll', function(type, message, duration)
    SendNUIMessage({
        action = 'show',
        type = type,
        message = message,
        duration = duration or 3000,
        sound = "notify"
    })
end)

-- Specific Player Notification Event (Targeted by Server)
RegisterNetEvent('customNotify:SendToPlayer')
AddEventHandler('customNotify:SendToPlayer', function(type, message, duration)
    SendNUIMessage({
        action = 'show',
        type = type,
        message = message,
        duration = duration or 3000,
        sound = "notify"
    })
end)

-- Test Command for Client Notifications
RegisterCommand('testnotify', function()
    TriggerEvent('customNotify:Send', 'success', 'This is a success message!', 5000)
    Wait(2000)
    TriggerEvent('customNotify:Send', 'info', 'This is an info message!', 5000)
    Wait(2000)
    TriggerEvent('customNotify:Send', 'error', 'This is an error message!', 5000)
end, false)
