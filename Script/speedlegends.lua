---@diagnostic disable: undefined-global

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


local Window = Rayfield:CreateWindow({
	Name = "BlackOut v1 | Legends Of Speed",
	LoadingTitle = "BlackOut v1 | Legends Of Speed",
	LoadingSubtitle = "Script By Vo",
	ConfigurationSaving = {
		Enabled = true,
		FileName = "BlackOut"
	},
	KeySystem = false, 
	KeySettings = {
		Title = "BlackOut v1 | KeySystem",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/WQqFAEkhJ5)",
		Key = "ABCDEF"
	}
})

-- Credits
local CreditsTab = Window:CreateTab("Credits")

local Button = CreditsTab:CreateButton({
	Name = "Join The Discord :D",
	Callback = function()
		setclipboard("https://discord.gg/WQqFAEkhJ5")
	end,
})

local Paragraph = CreditsTab:CreateParagraph({Title = "Lead Developer, Vo#1092", Content = "A Very skilled programmer "})

--farmTab
local FarmTab = Window:CreateTab("Farming")

_G.AutoGems = true
function AutoGem()
    while _G.AutoGems == true do
        wait()
        for i, v in pairs(game.Workspace.orbFolder.City:GetChildren()) do
            if v.Name == "Gem" then
                v.outerGem.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
end
local Toggle = FarmTab:CreateToggle({
	Name = "Gem Farm",
	CurrentValue = false,
	Flag = "gemfarmtoggle",
	Callback = function(Value)
		_G.AutoGems = Value
        AutoGem()
	end,
})

_G.AutoHoops = true
function AutoHoops()
    while _G.AutoHoops == true do
        wait()
        for i, v in pairs(game.Workspace.Hoops:GetChildren()) do
            if v.Name == "Hoop" then
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
end
local Toggle = FarmTab:CreateToggle({
	Name = "Hoop Farm",
	CurrentValue = false,
	Flag = "hoopfarmtoggle",
	Callback = function(Value)
		_G.AutoHoops = Value
        AutoHoops()
	end,
})

_G.AutoOrbs = true
function AutoOrbs()
    while _G.AutoOrbs == true do
        wait()
        for i, v in pairs(game.Workspace.orbFolder.City:GetChildren()) do
            if v.Name ~= "Gem" then
                v.outerOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
end
local Toggle = FarmTab:CreateToggle({
	Name = "Orb Farm",
	CurrentValue = false,
	Flag = "orbfarmtoggle",
	Callback = function(Value)
		_G.AutoOrbs = Value
        AutoOrbs()
	end,
})

_G.Allfarms = true
function FarmAll()
    while _G.Allfarms == true do
        wait()
        for i, v in pairs(game.Workspace.orbFolder.City:GetChildren()) do
            if v.Name == "Gem" then
                v.outerGem.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
        for i, v in pairs(game.Workspace.Hoops:GetChildren()) do
            if v.Name == "Hoop" then
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
        for i, v in pairs(game.Workspace.orbFolder.City:GetChildren()) do
            if v.Name ~= "Gem" then
                v.outerOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
end
local Toggle = FarmTab:CreateToggle({
	Name = "Farm All",
	CurrentValue = false,
	Flag = "allfarmtoggle",
	Callback = function(Value)
		_G.Allfarms = Value
        FarmAll()
	end,
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/log/speedlog.lua"))()