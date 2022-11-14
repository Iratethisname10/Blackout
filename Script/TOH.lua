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
	KeySystem = true,
	KeySettings = {
		Title = "Blackout v1",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/NbUUucBXhq)",
		FileName = "SiriusKey",
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

-- Local PLayer
local PlayerTab = Window:CreateTab("Local Player")

local Label = PlayerTab:CreateLabel("Modifications")

local Button = PlayerTab:CreateButton({
	Name = "Infinite Jumps",
	Callback = function()
		game:GetService("ReplicatedStorage").globalJumps.Value = 6969
		Rayfield:Notify({
			Title = "Infinite Jumps",
			Content = "globalJumps Value set to 6969",
			Duration = 5,
			Image = 4483362458,
		})
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
	end,
})

local Label = PlayerTab:CreateLabel("Reset")

local Button = PlayerTab:CreateButton({
	Name = "Reset Jumps",
	Callback = function()
		game:GetService("ReplicatedStorage").globalJumps.Value = 0
		Rayfield:Notify({
			Title = "Reset Jumps",
			Content = "globalJumps Value set to 0",
			Duration = 5,
			Image = 4483362458,
		})
	end,
})
local Button = PlayerTab:CreateButton({
	Name = "Reset Speed",
	Callback = function()
		game:GetService("ReplicatedStorage").globalSpeed.Value = 16
		Rayfield:Notify({
			Title = "Reset Jumps",
			Content = "globalSpeed Value set to 16",
			Duration = 5,
			Image = 4483362458,
		})
	end,
})
local Button = PlayerTab:CreateButton({
	Name = "Reset All",
	Callback = function()
		game:GetService("ReplicatedStorage").globalSpeed.Value = 16
		game:GetService("ReplicatedStorage").globalJumps.Value = 0
		Rayfield:Notify({
			Title = "Reset All",
			Content = "Values set to 0,16",
			Duration = 5,
			Image = 4483362458,
		})
	end,
})

-- boxes
local BoxesTab = Window:CreateTab("Boxes")

-- misc
local MiscTab = Window:CreateTab("Misc")

_G.gmode = true
function GodMode()
    while _G.gmode == true do
		wait()
		local me = game.Players.LocalPlayer.Name
		for i,v in pairs(game:GetService("Workspace")[me]:GetChildren()) do
			if v.Name == "hitbox" then
				v:ClearAllChildren()
				wait()
			end
		end
    end
end
local Toggle = MiscTab:CreateToggle({
	Name = "Remove Kill detector",
	CurrentValue = false,
	Flag = "gmodetoggle",
	Callback = function(Value)
		_G.gmode = Value
        GodMode()
	end,
})

local Button = MiscTab:CreateButton({
	Name = "Win",
	Callback = function()
		local FaggotSlut = game:GetService("Workspace").tower.finishes:FindFirstChild("Finish")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FaggotSlut.CFrame
		if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == FaggotSlut.CFrame then
			Rayfield:Notify({
				Title = "BlackOut",
				Content = "finnished",
				Duration = 5,
				Image = 4483362458,
			})
		end
	end,
})

local Button = MiscTab:CreateButton({
	Name = "Copy Appeal Text",
	Callback = function()
		setclipboard("I acknowledge that I have been banned justly for exploiting and hereby agree that I will not to do so again. Furthermore agree to have all my progress in the game deleted and wait 7 more days until I am am unbanned.")
		Rayfield:Notify({
			Title = "Blackout",
			Content = "Appeal text copied to clipboard",
			Duration = 5,
			Image = 4483362458,
		})
	end,
})

local Button = MiscTab:CreateButton({
	Name = "Anti AFK",
	Callback = function()
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
	end,
})



loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/log/tohlog.lua"))()