---@diagnostic disable: undefined-global

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Blackout v1 | Murder Mystery 2",
	LoadingTitle = "Blackout v1 | Murder Mystery 2",
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
	KeySystem = true,
	KeySettings = {
		Title = "Blackout v1",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/NbUUucBXhq)",
		FileName = "SiriusKey",
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

local farmTab = Window:CreateTab("farming", 4483362458)


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
local Toggle = farmTab:CreateToggle({
	Name = "AutoFarm TP",
	CurrentValue = false,
	Flag = "autofarmtp",
	Callback = function(Value)
		_G.AutoFarm = Value
        AutoFarmTP()
	end,
})



loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/log/bablog.lua"))()