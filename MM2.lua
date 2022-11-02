---@diagnostic disable: undefined-global

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Script/main/RayFieldUI.lua'))()


local Window = Rayfield:CreateWindow({
	Name = "BlackOut v1",
	LoadingTitle = "BlackOut v1",
	LoadingSubtitle = "Join the Discord pls",
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

local Paragraph = CreditsTab:CreateParagraph({Title = "Lead Developer, Vo#1092", Content = "hi, im new to scripting. cum is good :D"})

local FunnyTab = Window:CreateTab("Funny", 4483362458) 

local Button = FunnyTab:CreateButton({
	Name = "get gun",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.Gameplay.FakeGun:FireServer(true)
	end,
})
