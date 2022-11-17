---@diagnostic disable: undefined-global

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Blackout v1 | Natural Disaster Survival",
	LoadingTitle = "Blackout v1 | Natural Disaster Survival",
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
ltp.Name = "niggerballsTOWER"
ltp.Parent = game:GetService("Workspace")
ltp.Position = Vector3.new(-273.911, 178, 327.306)
ltp.Anchored = true
ltp.Transparency = 1
ltp.CanCollide = false

local ltp2 = Instance.new("Part")
ltp2.Name = "niggerballsISLAND"
ltp2.Parent = game:GetService("Workspace")
ltp2.Position = Vector3.new(-94, 46.2, 72.5)
ltp2.Anchored = true
ltp2.Transparency = 1
ltp2.CanCollide = false

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
		Rayfield:Notify({
			Title = "Blackout",
			Content = "If you get a callback error, it is because fall damage script has already been destroyed",
			Duration = 5,
			Image = 4483362458,
		})
	end,
})

-- teleports
local tpTab = Window:CreateTab("teleports", 4483362458)

local Button = tpTab:CreateButton({
	Name = "Tp to Tower",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").niggerballsTOWER.CFrame
	end,
})
local Button = tpTab:CreateButton({
	Name = "Tp to island",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").niggerballsISLAND.CFrame
	end,
})

-- misc
local miscTab = Window:CreateTab("Misc", 4483362458)

local Button = miscTab:CreateButton({
	Name = "Destroy Virus Particles",
	Callback = function()
		Rayfield:Notify({
			Title = "Blackout",
			Content = "If you get a callback error, it is because there are no existing virus particals",
			Duration = 5,
			Image = 4483362458,
		})
        game:GetService("Workspace").Structure.VirusParticles:Destroy()
	end,
})
local Button = miscTab:CreateButton({
	Name = "Destroy Tsunami wave",
	Callback = function()
		Rayfield:Notify({
			Title = "Blackout",
			Content = "If you get a callback error, it is because there are no existing tsumami waves",
			Duration = 5,
			Image = 4483362458,
		})
        game:GetService("Workspace").Structure.TsunamiWave:Destroy()
	end,
})
local Button = miscTab:CreateButton({
	Name = "Notify Coming Disaster",
	Callback = function()
        local lpjj = game.Players.LocalPlayer.Name
		local disaster2 = game:GetService('Workspace'):FindFirstChild(lpjj).SurvivalTag
		if disaster2.Value == "Tsunami" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = "Tsunami",
				Duration = 5,
				Image = 4483362458,
			})
		end 
		if disaster2.Value == "Deadly Virus" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = "Deadly Virus",
				Duration = 5,
				Image = 4483362458,
			})
		end
		if disaster2.Value == "Flash Flood" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = "Flash Flood",
				Duration = 5,
				Image = 4483362458,
			})
		end
		if disaster2.Value == "Earthquake" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = "Earthquake",
				Duration = 5,
				Image = 4483362458,
			})
		end
		if disaster2.Value == "Blizzard" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = " Blizzard",
				Duration = 5,
				Image = 4483362458,
			})
		end
		if disaster2.Value == "Meteor Shower" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = "Meteor Shower",
				Duration = 5,
				Image = 4483362458,
			})
		end
		if disaster2.Value == "Fire" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = " Fire",
				Duration = 5,
				Image = 4483362458,
			})
		end
		if disaster2.Value == "Acid Rain" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = "Acid Rain",
				Duration = 5,
				Image = 4483362458,
			})
		end
		if disaster2.Value == "Sandstorm" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = "Sandstorm",
				Duration = 5,
				Image = 4483362458,
			})
		end
		if disaster2.Value == "Thunderstorm" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = "Thunderstorm",
				Duration = 5,
				Image = 4483362458,
			})
		end
		if disaster2.Value == "Volcanic Eruption" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = "Volcanic Eruption",
				Duration = 5,
				Image = 4483362458,
			})
		end
		if disaster2.Value == "Tornado" then
			Rayfield:Notify({
				Title = "Disaster",
				Content = "Tornado",
				Duration = 5,
				Image = 4483362458,
			})
		end
	end,
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/log/ndslog.lua"))()