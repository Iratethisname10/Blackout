---@diagnostic disable: undefined-global

if game.PlaceId == 537413528 then -- boat
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/Script/Build%20A%20Boat.lua"))()
end
if game.PlaceId == 142823291 then -- mm2
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/Script/MM2.lua"))()
end
if game.PlaceId == 1962086868 then  -- toh
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/Script/TOH.lua"))()
end
if game.PlaceId == 10758111998 then  -- booga
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/Script/booga.lua"))()
end
if game.PlaceId == 1537690962 then  -- bss
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/Script/bee%20swarm.lua"))()
end
if gam.Placeid ~= 1537690962 or 10758111998 or 1962086868 or 142823291 or 537413528 then
    game.Players.LocalPlayer:Kick("Game Not supported")
end