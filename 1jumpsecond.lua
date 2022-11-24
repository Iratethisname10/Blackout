local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Blackout v1 | "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
	LoadingTitle = "Blackout v1 | "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
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
ltp.Name = "niggerballsFARM"
ltp.Parent = game:GetService("Workspace")
ltp.Position = Vector3.new(-230.916, 7808.77002, 7963.58008, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
ltp.Anchored = true
ltp.Transparency = 1
ltp.CanCollide = false

local mainTab = Window:CreateTab("Main", 4483362458)

_G.AutoFarm = true
function AutoFarmTP()
    while _G.AutoFarm == true do
		wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").niggerballsFARM.CFrame
		wait(2)
    end
end
local Toggle = mainTab:CreateToggle({
	Name = "AutoFarm",
	CurrentValue = false,
	Flag = "y73e4g8y7ygriyudfhgfgh8899",
	Callback = function(Value)
		_G.AutoFarm = Value
        AutoFarmTP()
	end,
})