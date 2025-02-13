RegisterNetEvent('customNotify:Send')
AddEventHandler('customNotify:Send', function(type, message, duration)
    local sound = "notify" 

    SendNUIMessage({
        action = 'show',
        type = type, 
        message = message,
        duration = duration or 3000, 
        sound = sound
    })
end)

-- Test notification command /testnotify 
RegisterCommand('testnotify', function()
    TriggerEvent('customNotify:Send', 'success', 'This is a success message!', 5000)
    Wait(2000)
    TriggerEvent('customNotify:Send', 'info', 'This is an info message!', 5000)
    Wait(2000)
    TriggerEvent('customNotify:Send', 'error', 'This is an error message!', 5000)
end, false)
