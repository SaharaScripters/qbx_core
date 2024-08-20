local config = require 'config.server'

local function sendPaycheck(player, payment)
    player.Functions.AddMoney('bank', payment, 'paycheck')
    Notify(player.PlayerData.source, locale('info.received_paycheck', payment))
end

local function pay(player)
    local job = player.PlayerData.job
    local payment = GetJob(job.name).grades[job.grade.level].payment or job.payment
    if payment <= 0 then return end
    if not GetJob(job.name).offDutyPay and not job.onduty then return end
    if not config.money.paycheckSociety then
        config.sendPaycheck(player, payment)
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
