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

local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
local FaggotSlut = game:GetService("Workspace").tower.finishes:FindFirstChild("Finish")
local cumslut = game:GetService("Workspace").tower.sections.start.center

local mainTab = Window:CreateTab("Main")

local Section = mainTab:CreateSection("Stuff")

local Button = mainTab:CreateButton({
	Name = "Disable Anti-cheat",
	Callback = function()
		Rayfield:Notify({
			Title = "Ac Disabler",
			Content = "if you get a callback error, it means the anti-cheat is already disabled",
			Duration = 5,
			Image = 4483362458,
		})

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
	end,
})
local Button = mainTab:CreateButton({
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
local Button = mainTab:CreateButton({
	Name = "Win",
	Callback = function()
		hrp.CFrame = FaggotSlut.CFrame
	end,
})
local Button = mainTab:CreateButton({
	Name = "Gravity Win | must Disable AC",
	Callback = function()
		game:GetService("Workspace").Gravity = 0
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
		if game.PlaceId == 3582763398 then
			wait(10)
		end
		if game.PlaceId == 1962086868 or 5253186791 then
			wait(5)
		end
		hrp.CFrame = FaggotSlut.CFrame
		if hrp.CFrame == FaggotSlut.CFrame then
			game:GetService("Workspace").Gravity = 196.2
		end
	end,
})
local Button = mainTab:CreateButton({
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

local Section = mainTab:CreateSection("Player")

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
local Toggle = mainTab:CreateToggle({
	Name = "God Mode",
	CurrentValue = false,
	Flag = "gmodetoggletoh",
	Callback = function(Value)
		_G.gmode = Value
        GodMode()
	end,
})

_G.infjumps = true
function jumpinf()
    while _G.infjumps == true do
        wait()
		game:GetService("ReplicatedStorage").globalJumps.Value = 1298072
		if _G.infjumps == false then
			game:GetService("ReplicatedStorage").globalJumps.Value = 0
        end
    end
end
local Toggle = mainTab:CreateToggle({
	Name = "Infinite Jumps",
	CurrentValue = false,
	Flag = "infjumpstoh",
	Callback = function(Value)
		_G.infjumps = Value
        jumpinf()
	end,
})
local Slider = mainTab:CreateSlider({
	Name = "Set Speed",
	Range = {16, 120},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 16,
	Flag = "Speedtohghdfuoi90Slider", 
	Callback = function(Value)
    	game:GetService("ReplicatedStorage").globalSpeed.Value = Value
	end,
})

local miscTab = Window:CreateTab("Misc")

local Section = miscTab:CreateSection("Boxes")

_G.autounbox = true
function unbox()
    while _G.autounbox == true do
		wait()
		game:GetService("ReplicatedStorage").openBox:InvokeServer("Regular")
		wait(3)
    end
end
local Toggle = miscTab:CreateToggle({
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
		game:GetService("ReplicatedStorage").openBox:InvokeServer("Regular")
		wait()
    end
end
local Toggle = miscTab:CreateToggle({
	Name = "Auto Buy Boxes | fast",
	CurrentValue = false,
	Flag = "unboctoggle2",
	Callback = function(Value)
		_G.autounboxf = Value
        unboxf()
	end,
})