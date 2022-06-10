local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem('skudsikkervest25', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('skudsikkervest25', 1)

    TriggerClientEvent('MickeyMouse-Skudsikkervest:brugvest25%', source)
end)

ESX.RegisterUsableItem('skudsikkervest50', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('skudsikkervest50', 1)

    TriggerClientEvent('MickeyMouse-Skudsikkervest:brugvest50%', source)
end)

ESX.RegisterUsableItem('skudsikkervest75', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('skudsikkervest75', 1)

    TriggerClientEvent('MickeyMouse-Skudsikkervest:brugvest75%', source)
end)

ESX.RegisterUsableItem('skudsikkervest100', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('skudsikkervest100', 1)

    TriggerClientEvent('MickeyMouse-Skudsikkervest:brugvest100%', source)
end)

RegisterServerEvent('MickeyMouse-Skudsikkervest:giveBack')
AddEventHandler('MickeyMouse-Skudsikkervest:giveBack', function(item)
	local dmessage = " **MickeyMouse Skudsikkervest**: ``Steamnavn: "..GetPlayerName(source).." benyttede sig af commanden /removevest``"
	PerformHttpRequest('WEBHOOK', function(err, text, headers) end, 'POST', json.encode({username = dname, content = dmessage}), { ['Content-Type'] = 'application/json' })

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.addInventoryItem(item, 1)
end)
 