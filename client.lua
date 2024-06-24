local InRadialMenu = false
local ItemsData = {}
local TableWithItems = {}

AddItemsToTable = function(Items, TargetTable)
    for _, item in ipairs(Items) do
		local CanAddElement = true

		if item.canAdd and not item.canAdd() then
			CanAddElement = false
		end

		if item.item then
			if exports['ox_inventory']:GetItemCount(item.item.name, nil, false) < item.item.count then
				CanAddElement = false
			end
		end

		if item.job then
			if ESX.PlayerData.job.name ~= item.job.name or ESX.PlayerData.job.grade < (item.job.grade or 0) then
				CanAddElement = false
			end
		end

		if CanAddElement then
			local NewItem = {
				id = item.id,
				title = item.label,
				icon = item.icon,
                closeMenu = item.closeMenu,
			}

			if item.items then
			    NewItem.items = {}
			    AddItemsToTable(item.items, NewItem.items)
			end

			table.insert(TargetTable, NewItem)

			ItemsData[item.id] = {
				closeMenu = item.closeMenu,
				onClick = item.onClick,
				items = NewItem.items
			}
		end
    end
end

RegisterCommand('RadialMenu', function()
	if InRadialMenu then return end
	if LocalPlayer.state.IsDead then return end
	if IsPauseMenuActive() then return end
	--if exports['w_skin']:InRoom() then return end
	InRadialMenu = true
	Citizen.CreateThread(function()
		while InRadialMenu do
			Wait(0)
			DisableControlAction(0, 1, true) -- LookLeftRight
			DisableControlAction(0, 2, true) -- LookUpDown
			DisableControlAction(0, 106, true) -- VehicleMouseControlOverride
			DisableControlAction(0, 200, true)
			if IsPauseMenuActive() or LocalPlayer.state.IsDead then
                SendNUIMessage({
                    action = "ui"
                })
			end
		end
	end)
	TableWithItems = {}
	AddItemsToTable(Config.Items, TableWithItems)
	ESX.UI.Menu.CloseAll()
    OpenRadialMenu(TableWithItems)
	SetNuiFocus(true, true)
	SetNuiFocusKeepInput(true)
	SetCursorLocation(0.5, 0.5)
end)

RegisterKeyMapping('RadialMenu', 'Radial Menu', 'keyboard', Config.Key)

function OpenRadialMenu(items)
    SendNUIMessage({
        action = "ui",
        radial = true,
        items = items
    })
end

function CloseRadialMenu()
    SendNUIMessage({
        action = "ui"
    })
	Wait(100)
    InRadialMenu = false
	SetNuiFocus(false, false)
	SetNuiFocusKeepInput(false)
end

RegisterNUICallback('closeRadial', CloseRadialMenu)

exports('CloseRadial', CloseRadialMenu)

RegisterNUICallback('selectItem', function(data)
    local id = data.itemData.id
    if ItemsData[id].onClick ~= nil then
        ItemsData[id].onClick()
    end
end)