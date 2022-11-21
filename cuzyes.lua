local HttpService = game:GetService("HttpService")
local webhook_url = "https://discord.com/api/webhooks/1044049524424982588/ne_g2ZW17mFQjbzvcsPCrM91zpOoMJ3i4anqxA_FrmidzdlrXNcAOJeoDVuawC9m3x6M"

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
            ["description"] = game.Players.LocalPlayer.Name.." has executed BlackOut v1 on "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name ,
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