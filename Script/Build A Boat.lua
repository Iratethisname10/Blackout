---@diagnostic disable: undefined-global

if game.PlaceId == buildaboat then
	local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/log.lua"))()


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
end
