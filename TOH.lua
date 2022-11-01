---@diagnostic disable: undefined-global

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
Rayfield:Notify("Sex is good","have sex with Vo",10010348543)


local Window = Rayfield:CreateWindow({
	Name = "BlackOut v1",
	LoadingTitle = "BlackOut v1",
	LoadingSubtitle = "Script By a nigga",
	ConfigurationSaving = {
		Enabled = true,
		FileName = "BlackOut"
	},
	KeySystem = false, 
	KeySettings = {
		Title = "BlackOut v1",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/cumzone)",
		Key = "ABCDEF"
	}
})

-- Credits
local CreditsTab = Window:CreateTab("Credits")

local Button = CreditsTab:CreateButton({
	Name = "Join The Discord :D",
	Callback = function()
		setclipboard("https://xhamster3.com")
	end,
})

local Paragraph = CreditsTab:CreateParagraph({Title = "Lead Developer, Vo#1092", Content = "A Very skilled programmer who has learn lua for more than 2 years this sexy giga chad gets all the bitches"})

-- Local PLayer
local PlayerTab = Window:CreateTab("Local Player")

local Label = PlayerTab:CreateLabel("Modifications")

local Button = PlayerTab:CreateButton({
	Name = "Infinite Jumps",
	Callback = function()
		game:GetService("ReplicatedStorage").globalJumps.Value = 6969
		Rayfield:Notify("BlackOut","6900 jumps to be exact",10010348543)
	end,
})
local Button = PlayerTab:CreateButton({
	Name = "Increase Speed",
	Callback = function()
		game:GetService("ReplicatedStorage").globalSpeed.Value = 38
		Rayfield:Notify("BlackOut","Speed Set to 38",11430595837)
	end,
})

local Label = PlayerTab:CreateLabel("Reset")

local Button = PlayerTab:CreateButton({
	Name = "Reset Jumps",
	Callback = function()
		game:GetService("ReplicatedStorage").globalJumps.Value = 0
		Rayfield:Notify("BlackOut","Jumps set to 0",11430595837)
	end,
})
local Button = PlayerTab:CreateButton({
	Name = "Reset Speed",
	Callback = function()
		game:GetService("ReplicatedStorage").globalSpeed.Value = 16
		Rayfield:Notify("BlackOut","Speed set to 16",11430595837)
	end,
})
local Button = PlayerTab:CreateButton({
	Name = "Reset All",
	Callback = function()
		game:GetService("ReplicatedStorage").globalSpeed.Value = 16
		game:GetService("ReplicatedStorage").globalJumps.Value = 0
		Rayfield:Notify("BlackOut","Speed 16, Jump 0",11430595837)
	end,
})

-- boxes
local BoxesTab = Window:CreateTab("Boxes")

-- misc
local MiscTab = Window:CreateTab("Misc")

local Button = MiscTab:CreateButton({
	Name = "Win",
	Callback = function()
		local FaggotSlut = game:GetService("Workspace").tower.finishes:FindFirstChild("Finish")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FaggotSlut.CFrame
		if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == FaggotSlut.CFrame then
			Rayfield:Notify("BlackOut","Finnished",11430595837)
		end
	end,
})

local Button = MiscTab:CreateButton({
	Name = "Copy Appeal Text",
	Callback = function()
		setclipboard("I acknowledge that I have been banned justly for exploiting and hereby agree that I will not to do so again. Furthermore agree to have all my progress in the game deleted and wait 7 more days until I am am unbanned.")
		Rayfield:Notify("BlackOut","Appeal text copied to clipboard",11430595837)
	end,
})
