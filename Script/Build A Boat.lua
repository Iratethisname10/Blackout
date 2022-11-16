---@diagnostic disable: undefined-global

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Blackout v1 | Build A Boat For Treasure",
	LoadingTitle = "Blackout v1 | Build A Boat For Treasure",
	LoadingSubtitle = "Script by Vo",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "Blackout"
	},
        Discord = {
        	Enabled = true,
        	Invite = "NbUUucBXhq",
        	RememberJoins = false
        },
	KeySystem = false,
	KeySettings = {
		Title = "Blackout v1",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/NbUUucBXhq)",
		FileName = "BlackoutKey",
		SaveKey = true,
		GrabKeyFromSite = true,
		Key = "https://raw.githubusercontent.com/Iratethisname10/Blackout/main/Script/setting%20save"
	}
})

-- Credits
local CreditsTab = Window:CreateTab("Credits")

local Button = CreditsTab:CreateButton({
	Name = "Join The Discord :D",
	Callback = function()
		setclipboard("https://discord.gg/NbUUucBXhq")
		Rayfield:Notify({
			Title = "Blackout",
			Content = "Discord Invite copied to clipboard",
			Duration = 5,
			Image = 4483362458,
		})
	end,
})

local Paragraph = CreditsTab:CreateParagraph({Title = "Lead Developer, Vo#1092", Content = "A Very skilled programmer "})

local mainTab = Window:CreateTab("Main", 4483362458)


_G.AutoFarm = true
function AutoFarmTP()
    while _G.AutoFarm == true do
		game:GetService("Workspace").Gravity = 0
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage1:FindFirstChild("DarknessPart").CFrame
		wait(3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage2:FindFirstChild("DarknessPart").CFrame
		wait(3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage3:FindFirstChild("DarknessPart").CFrame
		wait(3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage4:FindFirstChild("DarknessPart").CFrame
		wait(3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage5:FindFirstChild("DarknessPart").CFrame
		wait(3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage6:FindFirstChild("DarknessPart").CFrame
		wait(3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage7:FindFirstChild("DarknessPart").CFrame
		wait(3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage8:FindFirstChild("DarknessPart").CFrame
		wait(3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage9:FindFirstChild("DarknessPart").CFrame
		wait(3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage10:FindFirstChild("DarknessPart").CFrame
		wait(3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.TheEnd.GoldenChest:FindFirstChild("Trigger").CFrame
		game:GetService("Workspace").Gravity = 192
		wait(20)
    end
end
local Toggle = mainTab:CreateToggle({
	Name = "AutoFarm TP",
	CurrentValue = false,
	Flag = "autofarmtp",
	Callback = function(Value)
		_G.AutoFarm = Value
        AutoFarmTP()
	end,
})
local Button = mainTab:CreateButton({
	Name = "Anti water Damage",
	Callback = function()
		game.Players.LocalPlayer.Character:FindFirstChild("WaterDetector"):Destroy()
	end,
})

local chestTab = Window:CreateTab("Chests", 4483362458)

_G.autocommon = true
function autocommon()
    while _G.autocommon == true do
		workspace.ItemBoughtFromShop:InvokeServer("Common Chest",1)
		wait(9)
    end
end
local Toggle = chestTab:CreateToggle({
	Name = "Auto Common chest",
	CurrentValue = false,
	Flag = "autocommon",
	Callback = function(Value)
		_G.autocommon = Value
        autocommon()
	end,
})
_G.autouncommon = true
function autouncommon()
    while _G.autouncommon == true do
        workspace.ItemBoughtFromShop:InvokeServer("Uncommon Chest",1)
		wait(9)
    end
end
local Toggle = chestTab:CreateToggle({
	Name = "Auto Uncommon chest",
	CurrentValue = false,
	Flag = "autocommon",
	Callback = function(Value)
		_G.autouncommon = Value
        autouncommon()
	end,
})
_G.autorare = true
function autorare()
    while _G.autorare == true do
        workspace.ItemBoughtFromShop:InvokeServer("Rare Chest",1)
		wait(9)
    end
end
local Toggle = chestTab:CreateToggle({
	Name = "Auto Rare chest",
	CurrentValue = false,
	Flag = "autocommon",
	Callback = function(Value)
		_G.autorare = Value
        autorare()
	end,
})
_G.autoepic = true
function autoepic()
    while _G.autoepic == true do
        workspace.ItemBoughtFromShop:InvokeServer("Epic Chest",1)
		wait(9)
    end
end
local Toggle = chestTab:CreateToggle({
	Name = "Auto Epic chest",
	CurrentValue = false,
	Flag = "autoepic",
	Callback = function(Value)
		_G.autoepic = Value
        autoepic()
	end,
})
_G.autolegendary = true
function autolegendary()
    while _G.autolegendary == true do
        workspace.ItemBoughtFromShop:InvokeServer("Legendary Chest",1)
		wait(9)
    end
end
local Toggle = chestTab:CreateToggle({
	Name = "Auto Legendary chest",
	CurrentValue = false,
	Flag = "autolegendary",
	Callback = function(Value)
		_G.autolegendary = Value
        autolegendary()
	end,
})



loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/log/bablog.lua"))()