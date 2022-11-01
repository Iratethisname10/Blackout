---@diagnostic disable: undefined-global


-- game IDs
local BuildABoat = 537413528

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

local FunnyTab = Window:CreateTab("Funny", 4483362458) 

local Button = FunnyTab:CreateButton({
	Name = "get gun",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.Gameplay.FakeGun:FireServer(true)
	end,
})
