local config = require 'config.server'

local function removeHungerAndThirst(src, player)
    local newHunger = player.PlayerData.metadata.hunger - config.player.hungerRate
    local newThirst = player.PlayerData.metadata.thirst - config.player.thirstRate
    if newHunger <= 0 then
        newHunger = 0
    end
    if newThirst <= 0 then
        newThirst = 0
    end
    player.Functions.SetMetaData('thirst', newThirst)
    player.Functions.SetMetaData('hunger', newHunger)
    TriggerClientEvent('hud:client:UpdateNeeds', src, newHunger, newThirst)
    player.Functions.Save()
end

CreateThread(function()
    local interval = 60000 * config.updateInterval
    while true do
        Wait(interval)
        for src, player in pairs(QBX.Players) do
            removeHungerAndThirst(src, player)
        end
    end
end)

local function sendPaycheck(player, payment)
    player.Functions.AddMoney('bank', payment, 'paycheck')
    Notify(player.PlayerData.source, locale('info.received_paycheck', payment))
end

local function pay(player)
    local job = player.PlayerData.job
    local payment = QBX.Shared.Jobs[job.name].grades[job.grade.level].payment or job.payment
    if payment <= 0 then return end
    if not QBX.Shared.Jobs[job.name].offDutyPay and not job.onduty then return end
    if not config.money.paycheckSociety then
        sendPaycheck(player, payment)
        return
    end
    local jobAccountName = job.name
    if job.name == 'unemployed' then
        jobAccountName = 'government'
    end
    local account = config.getSocietyAccount(jobAccountName)
    if not account then -- Checks if player is employed by a society
        Notify(player.PlayerData.source, locale('error.company_account_doesnt_exist'):format(jobAccountName), 'error')
        return
    end
    if account < payment then -- Checks if company has enough money to pay society
        Notify(player.PlayerData.source, locale('error.company_too_poor'):format(jobAccountName), 'error')
        return
    end
    config.removeSocietyMoney(jobAccountName, payment, 'paycheck for ' .. player.PlayerData.charinfo.firstname .. ' ' .. player.PlayerData.charinfo.lastname)
    sendPaycheck(player, payment)
end

CreateThread(function()
    local interval = 60000 * config.money.paycheckTimeout
    while true do
        Wait(interval)
        for _, player in pairs(QBX.Players) do
            pay(player)
        end
    end
end)
