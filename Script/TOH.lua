---@diagnostic disable: undefined-global

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Blackout v1 | Tower of hell",
	LoadingTitle = "Blackout v1 | Tower of hell",
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

-- Local PLayer
local PlayerTab = Window:CreateTab("Local Player")

local Label = PlayerTab:CreateLabel("Modifications")

_G.infjumps = true
function jumpinf()
    while _G.infjumps == true do
        wait()
		game:GetService("ReplicatedStorage").globalJumps.Value = 1298072
    end
end
local Toggle = PlayerTab:CreateToggle({
	Name = "Infinite Jumps",
	CurrentValue = false,
	Flag = "infjumpstoh",
	Callback = function(Value)
		_G.infjumps = Value
        jumpinf()
	end,
})
local Slider = PlayerTab:CreateSlider({
	Name = "SetSpeed",
	Range = {16, 120},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 16,
	Flag = "Speed Slider", 
	Callback = function(Value)
    	game:GetService("ReplicatedStorage").globalSpeed.Value = Value
	end,
})
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
local Toggle = PlayerTab:CreateToggle({
	Name = "God Mode",
	CurrentValue = false,
	Flag = "gmodetoggle",
	Callback = function(Value)
		_G.gmode = Value
        GodMode()
	end,
})


-- boxes
local BoxesTab = Window:CreateTab("Boxes")

_G.autounbox = true
function unbox()
    while _G.autounbox == true do
		wait()
		game:GetService("ReplicatedStorage").openBox:InvokeServer("Regular")
		wait(3)
    end
end
local Toggle = BoxesTab:CreateToggle({
	Name = "Auto Buy Boxes | slow",
	CurrentValue = false,
	Flag = "unboctoggle",
	Callback = function(Value)
		_G.autounbox = Value
        unbox()
	end,
})
_G.autounboxf = true
function unboxf()
    while _G.autounboxf == true do
		wait()
		game:GetService("ReplicatedStorage").openBox:InvokeServer("Regular")
		wait()
    end
end
local Toggle = BoxesTab:CreateToggle({
	Name = "Auto Buy Boxes | fast",
	CurrentValue = false,
	Flag = "unboctoggle2",
	Callback = function(Value)
		_G.autounboxf = Value
        unboxf()
	end,
})

-- misc
local MiscTab = Window:CreateTab("Misc")


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
	Name = "Get all tools (client)",
	Callback = function()
		for _,e in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			if e:IsA("Tool") then
				e:Destroy()
			end
		end
		wait()
		for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
			if v:IsA("Tool") then
				local CloneThings = v:Clone()
				wait()
				CloneThings.Parent = game.Players.LocalPlayer.Backpack
			end
		end
	end,
})
local Button = MiscTab:CreateButton({
	Name = "Disable Anti-cheat",
	Callback = function()
		local playerscripts = game:GetService'Players'.LocalPlayer.PlayerScripts
		local script1 = playerscripts.LocalScript
        local script2 = playerscripts.LocalScript2

		local script1signal = script1.Changed
        local script2signal = script2.Changed

		for i, connection in next, getconnections(script1signal) do
			connection:Disable()
		end
		for i, connection in next, getconnections(script2signal) do
			connection:Disable()
		end

		script1:Destroy()
        script2:Destroy()
		Rayfield:Notify({
			Title = "Ac Disabler",
			Content = "if you get a callback error, it means the anti-cheat is already disabled",
			Duration = 5,
			Image = 4483362458,
		})
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




loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Blackout/main/log/tohlog.lua"))()