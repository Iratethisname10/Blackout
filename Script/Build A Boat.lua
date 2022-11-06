---@diagnostic disable: undefined-global

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


local Window = Rayfield:CreateWindow({
	Name = "BlackOut v1 | Build A Boat For Treasure",
	LoadingTitle = "BlackOut v1 | Build A Boat For Treasure",
	LoadingSubtitle = "Script By Vo",
	ConfigurationSaving = {
		Enabled = true,
		FileName = "BlackOut"
	},
	KeySystem = false, 
	KeySettings = {
		Title = "BlackOut v1",
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

local farmTab = Window:CreateTab("farming", 4483362458)

local Button = farmTab:CreateButton({
	Name = "AutoFarm TP",
	Callback = function()
		while true do
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
	end,
})























loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/log/bablog.lua"))()