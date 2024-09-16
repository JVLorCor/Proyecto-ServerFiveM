-- Función para reparar el vehículo
function RepairVehicle()
    local playerPed = PlayerPedId()
    if IsPedInAnyVehicle(playerPed, false) then
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        -- Reparar el vehículo
        SetVehicleFixed(vehicle)  -- Repara el vehículo (mecánicamente)
        SetVehicleDirtLevel(vehicle, 0.0)  -- Limpia el vehículo
        SetVehicleEngineHealth(vehicle, 1000.0)  -- Establecer la salud del motor a 100%
        SetVehiclePetrolTankHealth(vehicle, 1000.0)  -- Establecer la salud del tanque de gasolina a 100%

        -- Mensaje de confirmación (opcional)
        TriggerEvent("chat:addMessage", {
            color = {255, 0, 0},
            multiline = true,
            args = {"[Sistema]", "¡Tu vehículo ha sido reparado!"}
        })
    else
        -- Si no está en un vehículo, mostrar un mensaje
        TriggerEvent("chat:addMessage", {
            color = {255, 0, 0},
            multiline = true,
            args = {"[Error]", "No estás dentro de un vehículo."}
        })
    end
end

-- Registrar el comando que se ejecutará con la tecla asignada
RegisterCommand("repairvehicle", function()
    RepairVehicle()
end, false)

-- Asignar el comando a una tecla configurable
RegisterKeyMapping("repairvehicle", "Reparar Vehículo", "keyboard", "N")  -- "N" es la tecla predeterminada, se puede cambiar
