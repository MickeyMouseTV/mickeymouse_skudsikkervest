ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('MickeyMouse-Skudsikkervest:brugvest25%')
AddEventHandler('MickeyMouse-Skudsikkervest:brugvest25%', function()
	local playerPed = PlayerPedId()

	exports['progressBars']:startUI(1000, "TAGER VEST PÅ")
	Citizen.Wait(1000)

	AddArmourToPed(playerPed, 25)
	SetPedArmour(playerPed, 25)
end)

RegisterNetEvent('MickeyMouse-Skudsikkervest:brugvest50%')
AddEventHandler('MickeyMouse-Skudsikkervest:brugvest50%', function()
	local playerPed = PlayerPedId()

	exports['progressBars']:startUI(1000, "TAGER VEST PÅ")
	Citizen.Wait(1000)

	AddArmourToPed(playerPed, 50)
	SetPedArmour(playerPed, 50)
end)

RegisterNetEvent('MickeyMouse-Skudsikkervest:brugvest75%')
AddEventHandler('MickeyMouse-Skudsikkervest:brugvest75%', function()
local playerPed = PlayerPedId()

	exports['progressBars']:startUI(1000, "TAGER VEST PÅ")
	Citizen.Wait(1000)

	AddArmourToPed(playerPed, 75)
	SetPedArmour(playerPed, 75)
end)

RegisterNetEvent('MickeyMouse-Skudsikkervest:brugvest100%')
AddEventHandler('MickeyMouse-Skudsikkervest:brugvest100%', function()
local playerPed = PlayerPedId()

	exports['progressBars']:startUI(1000, "TAGER VEST PÅ")
	Citizen.Wait(1000)

	AddArmourToPed(playerPed, 100)
	SetPedArmour(playerPed, 100)
end)

RegisterCommand('removevest', function(source, args, rawCommand)
	local playerPed = PlayerPedId()

	exports['progressBars']:startUI(1000, "FJERNER VEST")
	Citizen.Wait(1000)
	exports['mythic_notify']:DoHudText('error', 'Du har taget vesten af')
	TriggerServerEvent('MickeyMouse-Skudsikkervest:giveBack', 'skudsikkervest50')

	AddArmourToPed(playerPed, 0)
	SetPedArmour(playerPed, 0)
end)
