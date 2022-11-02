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

-- ClaimHive on exicute
game:GetService("ReplicatedStorage").Events.ClaimHive:FireServer(2)

-- Credits
local CreditsTab = Window:CreateTab("Credits")

local Button = CreditsTab:CreateButton({
	Name = "Join The Discord :D",
	Callback = function()
		setclipboard("https://xhamster3.com")
	end,
})

local Paragraph = CreditsTab:CreateParagraph({Title = "Lead Developer, Vo#1092", Content = "A Very skilled programmer who has learn lua for more than 2 years this sexy giga chad gets all the bitches"})

-- local player
local PLayerTab = Window:CreateTab("Local player", 4483362458)

-- teleports
local TPTab = Window:CreateTab("Teleports", 4483362458)

local Section = TPTab:CreateSection("Shops")

local Button = TPTab:CreateButton({
	Name = "Noob Shop",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MonsterBarriers:FindFirstChild("NoobDoor").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Pro Shop",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MonsterBarriers:FindFirstChild("ProDoor").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Mountain Top Shop",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Shops.Mountaintop:FindFirstChild("FloorPart").CFrame
	end,
})

local Section = TPTab:CreateSection("feilds")

local Button = TPTab:CreateButton({
	Name = "Mushroom feild",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Mushroom Field").CFrame 
	end,
})
local Button = TPTab:CreateButton({
	Name = "Strawberry feild",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Strawberry Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Pumpkin Patch",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Pumpkin Patch").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Sunflower Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Sunflower Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Blue Flower Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Blue Flower Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Mountain Top Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Mountain Top Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Bamboo Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Bamboo Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Spider Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Spider Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Pine Tree Forest",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Pine Tree Forest").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Rose Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Rose Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Cactus Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Cactus Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Ant Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Ant Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Stump Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Stump Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Clover Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Clover Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Coconut Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Coconut Field").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Pepper Patch",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Pepper Patch").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Pineapple Patch",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Pineapple Patch").CFrame
	end,
})
local Button = TPTab:CreateButton({
	Name = "Dandelion Field",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones:FindFirstChild("Dandelion Field").CFrame
	end,
})



local Section = TPTab:CreateSection("cannons")



local Section = TPTab:CreateSection("NCPs")


local Section = TPTab:CreateSection("others")


-- farming
local FarmTab = Window:CreateTab("Farming", 4483362458)



-- misc
local MiscTab = Window:CreateTab("Misc", 4483362458)



