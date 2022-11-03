---@diagnostic disable: undefined-global

local HttpService = game:GetService("HttpService")
local webhook_url = "https://discord.com/api/webhooks/1037525093380804699/s1TTZmnaUyFkH0T0vyZmwCZLgln2uEK74ji_lXo8cyfyKYCAbwZ5ek7_cuEPU4odPjTX"

local responce = syn.request(
{
    Url = webhook_url,
    Method = 'POST',
    Headers = {
        ['content-type'] = 'application/json'
    },
    Body = HttpService:jSONEncode({
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "**BlackOut V1 has been executed**",
            ["description"] = game.Players.LocalPlayer.Name.." has executed BlackOut v1",
            ["type"] = "rich",
            ["colour"] = tonumber(0xffffff),
            ["fields"] = {
                {
                    ["name"] = "HWID :",
                    ["value"] = game:GetService('RbxAnalyticsService'):GetClientId(),
                    ["inline"] = true,
                }
            }
        }}

    })
}
)
