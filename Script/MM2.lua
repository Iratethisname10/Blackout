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

--local player
local PlayerTab = Window:CreateTab("Local Player", 4483362458)

local Slider = PlayerTab:CreateSlider({
	Name = "Set Speed",
	Range = {16, 100},
	Increment = 1,
	Suffix = " ",
	CurrentValue = 16,
	Flag = "mm2 speed",
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
	Flag = "mm2 jump",
	Callback = function(Value)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = Value
	end,
})



-- Visuals
local VisualsTab = Window:CreateTab("Visuals", 4483362458)


-- Exploits
local ExploitsTab = Window:CreateTab("Exploits", 4483362458)

local Button = ExploitsTab:CreateButton({
	Name = "get gun",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.Gameplay.FakeGun:FireServer(true)
		Rayfield:Notify("BlackOut","FakeGun, Gun will not work",11430595837)
	end,
})

local Button = ExploitsTab:CreateButton({
	Name = "Lobby Trap Exploit",
	Callback = function()
        game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-0.0499992371, 156.810242, 15.8749695, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-0.0499992371, 156.810242, 10.3749695, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-0.0499992371, 156.810242, 4.37496948, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-0.0499992371, 156.810242, -1.62503052, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-0.0499992371, 156.810242, -25.3750229, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-0.0499992371, 156.810242, -31.3750229, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-0.0499992371, 156.810242, -37.3750229, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-8.2701149, 156.810242, -21.4701385, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-11.6749992, 156.810242, -13.2500153, 0, 0, 1, 0, 1, -0, -1, 0, 0))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-8.62366867, 156.810242, -4.67634583, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(7.81656265, 156.810242, -21.1165848, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(11.5749998, 156.810242, -13.2500153, 0, 0, 1, 0, 1, -0, -1, 0, 0))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(8.17011642, 156.810242, -5.02990723, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-11.1708183, 161.623138, 76.9608612, 0.940824866, -0.338884741, 0.00238190591, 0.00146636367, -0.00295758247, -0.999994576, 0.338889956, 0.940823257, -0.00228571892))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(-0.000204086304, 161.776947, 78.7268066, 1, 0, 0, 0, -0.00329351425, -0.999994576, 0, 0.999994576, -0.00329351425))
		game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(10.9214344, 161.719864, 76.6689758, 0.941053748, 0.33824867, 0.00237573683, 0.0030362159, -0.00142359734, -0.999994397, -0.338243365, 0.941055775, -0.00236666203))
	end,
})


-- gamemodes
local GameTab = Window:CreateTab("Game Modes", 4483362458)

local Label = GameTab:CreateLabel("Teleports")

local Button = GameTab:CreateButton({
	Name = "Tp to Lobby",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.Spawns:FindFirstChild("SpawnLocation").CFrame
	end,
})

local Label = GameTab:CreateLabel("Others")

local Button = GameTab:CreateButton({
	Name = "Destroy Lobby Barriers",
	Callback = function()
		game:GetService("Workspace").Lobby.MainLobby.InvisibleWalls:Destroy()
	end,
})


-- Misc
local MiscTab = Window:CreateTab("Misc", 4483362458)