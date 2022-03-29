RegisterCommand('rollin-licence', function()
    msg("Licence Verified")
    msg("Discord: discord.gg/NSPGcZaENr")
end, false)

function rollinLicence()
    Citizen.CreateThread(function()
        while true do
                Citizen.Wait(5000)
                if GetCurrentResourceName() ~= 'rollin-licence' then
                    print('^0[^3rollin-licence^0] ^3- ^1The console will close due to changing the script name.')
                    Citizen.Wait(5000)
                    while true do end
                end
        end
    end)
end

function msg(text)
    TriggerEvent("chatMessage",  "[Rollin Licence]", {255,0,0}, text)
end

function rollinCheck(licenceScriptName)
    print('^0[^3rollin-licence^0] ^3- ^1License Accepted Script Name   =^0', licenceScriptName)
end

-- fxmanifest.lua ve _resource.lua lara alttaki kod gelecek
-- exports {
-- 	'rollinCheck',
-- }
-- CTRL + Ö ile açabilirsin

-- Her Scriptin client.lua'sina su gelecek
-- Scriptlerin içine atılacak kod
-- local licenceScriptName=GetCurrentResourceName()exports['rollin-licence']:rollinCheck(licenceScriptName)
-- Not : Bu bir satırlık şeyin çok gizli bir yere çakılması gerekiyor

rollinLicence()
local licenceScriptName=GetCurrentResourceName()exports['rollin-licence']:rollinCheck(licenceScriptName)