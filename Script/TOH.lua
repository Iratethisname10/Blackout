---@diagnostic disable: undefined-global

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


local Window = Rayfield:CreateWindow({
	Name = "BlackOut v1",
	LoadingTitle = "BlackOut v1",
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
local Slider = PlayerTab:CreateSlider({
	Name = "SetSpeed",
	Range = {16, 120},
	Increment = 5,
	Suffix = "Speed",
	CurrentValue = 16,
	Flag = "Speed Slider", 
	Callback = function(Value)
    	game:GetService("ReplicatedStorage").globalSpeed.Value = Value
		Rayfield:Notify("BlackOut","Speed Set to "..Value,11430595837)
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

local Button = MiscTab:CreateButton({
	Name = "Anti Client Kick",
	Callback = function()
		Rayfield:Notify("BlackOut","Disabled Client Kicks",11430595837)
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
	end,
})



loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/log/tohlog.lua"))()

