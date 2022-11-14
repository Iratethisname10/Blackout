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

local ltp = Instance.new("Part")
ltp.Name = "niggerballs"
ltp.Parent = game:GetService("Workspace")
ltp.CFrame = game:GetService("Workspace").Tower.Steps.StepPart.CFrame
ltp.Anchored = true
ltp.Transparency = 1
ltp.CanCollide = false

--local player
local PlayerTab = Window:CreateTab("Local Player", 4483362458)

local Slider = PlayerTab:CreateSlider({
	Name = "Set Speed",
	Range = {16, 100},
	Increment = 1,
	Suffix = " ",
	CurrentValue = 16,
	Flag = "NDS speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = Value
	end,
})
local Slider = PlayerTab:CreateSlider({
	Name = "Set JumpPower",
	Range = {50, 420},
	Increment = 1,
	Suffix = " ",
	CurrentValue = 50,
	Flag = "nds jump",
	Callback = function(Value)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = Value
	end,
})
local Button = PlayerTab:CreateButton({
	Name = "Remove Fall Damage",
	Callback = function()
        local spk = game.Players.LocalPlayer.Name
        game:GetService('Workspace'):FindFirstChild(spk).FallDamageScript:Destroy()
	end,
})

-- teleports
local tpTab = Window:CreateTab("teleports", 4483362458)

local Button = tpTab:CreateButton({
	Name = "Tp to Tower",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").niggerballs.CFrame
	end,
})

-- misc
local miscTab = Window:CreateTab("Misc", 4483362458)


loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/log/ndslog.lua"))()