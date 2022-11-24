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
local Paragraph = CreditsTab:CreateParagraph({Title = "Cool dude, cOpEtriNe", Content = "Most of the modules are mad by him"})



local mainTab = Window:CreateTab("Stuff", 4483362458)

local Button = mainTab:CreateButton({
	Name = "Silent Aim",
	Callback = function()
		getgenv().silentaim_settings = {
			fov = 1000,
			hitbox = "Head",
			fovcircle = true,
		}

		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")

		local Player = Players.LocalPlayer
		local Mouse = Player:GetMouse()
		local CurrentCamera = workspace.CurrentCamera

		local function GetClosest(Fov)
			local Target, Closest = nil, Fov or math.huge
	
			for i,v in pairs(Players:GetPlayers()) do
				if (v.Character and v ~= Player and v.Character:FindFirstChild(getgenv().silentaim_settings.hitbox)) then
					local Position, OnScreen = CurrentCamera:WorldToScreenPoint(v.Character[getgenv().silentaim_settings.hitbox].Position)
					local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
	
					if (Distance < Closest and OnScreen) then
						Closest = Distance
						Target = v
					end
				end
			end
	
			return Target
		end

		local Target
		local CircleInline = Drawing.new("Circle")
		local CircleOutline = Drawing.new("Circle")
		RunService.Stepped:Connect(function()
			CircleInline.Radius = getgenv().silentaim_settings.fov
			CircleInline.Thickness = 2
			CircleInline.Position = Vector2.new(Mouse.X, Mouse.Y + 36)
			CircleInline.Transparency = 0
			CircleInline.Color = Color3.fromRGB(255, 255, 255)
			CircleInline.Visible = getgenv().silentaim_settings.fovcircle
			CircleInline.ZIndex = 2
	
			CircleOutline.Radius = getgenv().silentaim_settings.fov
			CircleOutline.Thickness = 4
			CircleOutline.Position = Vector2.new(Mouse.X, Mouse.Y + 36)
			CircleOutline.Transparency = 0
			CircleOutline.Color = Color3.new()
			CircleOutline.Visible = getgenv().silentaim_settings.fovcircle
			CircleOutline.ZIndex = 1
	
			Target = GetClosest(getgenv().silentaim_settings.fov)
		end)
		
		local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
			local Args = {...}
	
			if (not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList") then
				if (table.find(Args[2], workspace.WorldIgnore.Ignore) and Target and Target.Character) then
					local Origin = Args[1].Origin
	
					Args[1] = Ray.new(Origin, Target.Character[getgenv().silentaim_settings.hitbox].Position - Origin)
				end
			end
	
			return Old(Self, unpack(Args))
		end)
	end,
})




local Button = mainTab:CreateButton({
	Name = "Fly Jump",
	Callback = function()
		game:GetService("UserInputService").JumpRequest:connect(function()
			if true then
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
			end
		end)
	end,
})

_G.Bhop = true
function Bhop()
    while _G.Bhop == true do
        wait()
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
end
local Toggle = mainTab:CreateToggle({
	Name = "Bhop | auto jump",
	CurrentValue = false,
	Flag = "56yhtrdh65hdfghfgggggggggge",
	Callback = function(Value)
		_G.Bhop = Value
        Bhop()
	end,
})

_G.boostspeed = true
function boostspeed()
    while _G.boostspeed == true do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 17
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 19
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 22
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 22
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 19
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        wait()
        if _G.boostspeed == false then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end 
    end
end
local Toggle = mainTab:CreateToggle({
	Name = "Speed Boost",
	CurrentValue = false,
	Flag = "r43jf7d8sftg9yudfrgggggggggge",
	Callback = function(Value)
		_G.boostspeed = Value
        boostspeed()
	end,
})

local VisualsTab = Window:CreateTab("Visuals", 4483362458)

local Button = VisualsTab:CreateButton({
	Name = "Box Esp",
	Callback = function()
		local lplr = game.Players.LocalPlayer
		local camera = game:GetService("Workspace").CurrentCamera
		local CurrentCamera = workspace.CurrentCamera
		local worldToViewportPoint = CurrentCamera.worldToViewportPoint
	
		local HeadOff = Vector3.new(0, 0.5, 0)
		local LegOff = Vector3.new(0,3,0)
	
		for i,v in pairs(game.Players:GetChildren()) do
			local BoxOutline = Drawing.new("Square")
			BoxOutline.Visible = false
			BoxOutline.Color = Color3.new(255,0,0)
			BoxOutline.Thickness = 3
			BoxOutline.Transparency = 1
			BoxOutline.Filled = false
	
			local Box = Drawing.new("Square")
			Box.Visible = false
			Box.Color = Color3.new(255,0,0)
			Box.Thickness = 1
			Box.Transparency = 1
			Box.Filled = false
	
			local HealthBarOutline = Drawing.new("Square")
			HealthBarOutline.Thickness = 3
			HealthBarOutline.Filled = false
			HealthBarOutline.Color = Color3.new(0,255,0)
			HealthBarOutline.Transparency = 1
			HealthBarOutline.Visible = false
	
			local HealthBar = Drawing.new("Square")
			HealthBar.Thickness = 1
			HealthBar.Filled = false
			HealthBar.Transparency = 1
			HealthBar.Visible = false
	
			function boxesp()
				game:GetService("RunService").RenderStepped:Connect(function()
					if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
						local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
	
						local RootPart = v.Character.HumanoidRootPart
						local Head = v.Character.Head
						local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
						local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
						local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)
	
						if onScreen then
							BoxOutline.Size = Vector2.new(2000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
							BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
							BoxOutline.Visible = true
	
							Box.Size = Vector2.new(2000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
							Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
							Box.Visible = true
	
							HealthBarOutline.Size = Vector2.new(3, HeadPosition.Y - LegPosition.Y)
							HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
							HealthBarOutline.Visible = true
	
							HealthBar.Size = Vector2.new(3, (HeadPosition.Y - LegPosition.Y) / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / math.clamp(game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value, 0, game:GetService("Players")[v.Character.Name].NRPBS:WaitForChild("MaxHealth").Value)))
							HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1 / HealthBar.Size.Y))
							HealthBar.Color = Color3.fromRGB(0,255,0 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 0)
							HealthBar.Visible = true
	
							if v.TeamColor == lplr.TeamColor then
								--- Our Team
								BoxOutline.Visible = false
								Box.Visible = false
								HealthBarOutline.Visible = false
								HealthBar.Visible = false
							else
								---Enemy Team
								BoxOutline.Visible = true
								Box.Visible = true
								HealthBarOutline.Visible = true
								HealthBar.Visible = true
							end
	
						else
							BoxOutline.Visible = false
							Box.Visible = false
							HealthBarOutline.Visible = false
							HealthBar.Visible = false
						end
					else
						BoxOutline.Visible = false
						Box.Visible = false
						HealthBarOutline.Visible = false
						HealthBar.Visible = false
					end
				end)
			end
			coroutine.wrap(boxesp)()
		end
	
		game.Players.PlayerAdded:Connect(function(v)
			local BoxOutline = Drawing.new("Square")
			BoxOutline.Visible = false
			BoxOutline.Color = Color3.new(255,0,0)
			BoxOutline.Thickness = 3
			BoxOutline.Transparency = 1
			BoxOutline.Filled = false
	
			local Box = Drawing.new("Square")
			Box.Visible = false
			Box.Color = Color3.new(255,0,0)
			Box.Thickness = 1
			Box.Transparency = 1
			Box.Filled = false
	
			local HealthBarOutline = Drawing.new("Square")
			HealthBarOutline.Thickness = 3
			HealthBarOutline.Filled = false
			HealthBarOutline.Color = Color3.new(0,255,0)
			HealthBarOutline.Transparency = 1
			HealthBarOutline.Visible = false
	
			local HealthBar = Drawing.new("Square")
			HealthBar.Thickness = 1
			HealthBar.Filled = false
			HealthBar.Transparency = 1
			HealthBar.Visible = false
	
			function boxesp()
				game:GetService("RunService").RenderStepped:Connect(function()
					if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
						local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
	
						local RootPart = v.Character.HumanoidRootPart
						local Head = v.Character.Head
						local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
						local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
						local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)
	
						if onScreen then
							BoxOutline.Size = Vector2.new(2000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
							BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
							BoxOutline.Visible = true
	
							Box.Size = Vector2.new(2000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
							Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
							Box.Visible = true
	
							HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
							HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
							HealthBarOutline.Visible = true
	
							HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / math.clamp(game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value, 0, game:GetService("Players")[v.Character.Name].NRPBS:WaitForChild("MaxHealth").Value)))
							HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1/HealthBar.Size.Y))
							HealthBar.Color = Color3.fromRGB(0,255,0 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 0)                    
							HealthBar.Visible = true
	
							if v.TeamColor == lplr.TeamColor then
								--- Our Team
								BoxOutline.Visible = false
								Box.Visible = false
								HealthBarOutline.Visible = false
								HealthBar.Visible = false
							else
								---Enemy Team
								BoxOutline.Visible = true
								Box.Visible = true
								HealthBarOutline.Visible = true
								HealthBar.Visible = true
							end
	
						else
							BoxOutline.Visible = false
							Box.Visible = false
							HealthBarOutline.Visible = false
							HealthBar.Visible = false
						end
					else
						BoxOutline.Visible = false
						Box.Visible = false
						HealthBarOutline.Visible = false
						HealthBar.Visible = false
					end
				end)
			end
			coroutine.wrap(boxesp)()
		end)
	end,
})

local Button = VisualsTab:CreateButton({
	Name = "Chams",
	Callback = function()
		local players = game:GetService("Players")
		local localPlayer = players.LocalPlayer
		local storage = {}

		local function applyChams(player: Player)
			local LightCham = Instance.new("Highlight")
			LightCham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			LightCham.FillColor = Color3.fromRGB(255, 0, 0)
			LightCham.FillTransparency = 0.55
			LightCham.OutlineTransparency = 1
	
			local function onAdded(character)
				LightCham.Adornee = character
				LightCham.Parent = character
			end
	
			local function onRemoved()
				LightCham.Adornee = nil
				LightCham.Parent = nil
			end
	
			if player.Character then
				onAdded(player.Character)
			end
	
			player.CharacterAdded:Connect(onAdded)
			player.CharacterRemoving:Connect(onRemoved)
	
			storage[player] = LightCham
		end

		local function removeChams(player: Player)
			local LightRemove = storage[player]
			if LightRemove then
				LightRemove:Destroy()
				LightRemove = nil
				storage[player] = nil
			end
		end

		for i,v in next, players:GetPlayers() do
			if v ~= localPlayer then
				applyChams(v)
			end
		end

		players.PlayerAdded:Connect(applyChams)
		players.PlayerRemoving:Connect(removeChams)
	end,
})

local Button = VisualsTab:CreateButton({
	Name = "Outline",
	Callback = function()
		local players = game:GetService("Players")
		local localPlayer = players.LocalPlayer
		local storage = {}

		local function applyChams(player: Player)
			local highlight = Instance.new("Highlight")
			highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
			highlight.FillTransparency = 1
			highlight.OutlineTransparency = 0
	
			local function onAdded(character)
				highlight.Adornee = character
				highlight.Parent = character
			end
	
			local function onRemoved()
				highlight.Adornee = nil
				highlight.Parent = nil
			end
	
			if player.Character then
				onAdded(player.Character)
			end
	
			player.CharacterAdded:Connect(onAdded)
			player.CharacterRemoving:Connect(onRemoved)
	
			storage[player] = highlight
		end

		local function removeChams(player: Player)
			local highlight = storage[player]
			if highlight then
				highlight:Destroy()
				highlight = nil
				storage[player] = nil
			end
		end
	
		for i,v in next, players:GetPlayers() do
			if v ~= localPlayer then
				applyChams(v)
			end
		end
	
	
		players.PlayerAdded:Connect(applyChams)
		players.PlayerRemoving:Connect(removeChams)
	end,
})

local Button = VisualsTab:CreateButton({
	Name = "Name Tags",
	Callback = function()
		local esp_settings = {
			textsize = 15,
			colour = 0,0,0
		}

		local Holder = Instance.new("BillboardGui")
		local esp = Instance.new("TextLabel",Holder)
	
		Holder.Name = "SIJ%$(DJFHET^"
		Holder.ResetOnSpawn = false
		Holder.AlwaysOnTop = true;
		Holder.Size = UDim2.new(1.75, 0, 1.75, 0);
		esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		esp.Text = ""
		esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
		esp.BorderSizePixel = 4;
		esp.BorderColor3 = Color3.new(esp_settings.colour)
		esp.BorderSizePixel = 0
		esp.Font = "Code"
		esp.TextSize = esp_settings.textsize
		esp.TextColor3 = Color3.fromRGB(esp_settings.colour) 
	
		game:GetService("RunService").RenderStepped:Connect(function() 
			for i,v in pairs (game:GetService("Players"):GetPlayers()) do
				if v ~= game:GetService("Players").LocalPlayer and v.Character.Torso:FindFirstChild("SIJ%$(DJFHET^")==nil  then 
					esp.Text = " "..v.Name.." "
					Holder:Clone().Parent = v.Character.Torso
				end
			end
		end)
	end,
})

local miscTab = Window:CreateTab("Misc", 4483362458)

local Button = miscTab:CreateButton({
	Name = "Remove Shadows",
	Callback = function()
		game.Lighting.GlobalShadows = false
	end,
})

local Button = miscTab:CreateButton({
	Name = "BTools",
	Callback = function()
		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
	end,
})

local Button = miscTab:CreateButton({
	Name = "Anti Ban",
	Callback = function()
        Rayfield:Notify({
			Title = "Anti Ban",
			Content = "if you get a callback error, it means Ban remotes have been destroyed",
			Duration = 3,
			Image = 4483362458,
		})
		game:GetService("ReplicatedStorage").GameEvents.Misk.BanReceived:Destroy()
        game.Players.LocalPlayer.PlayerGui.GameUI.Menu.MainMenuUI.Banned:Destroy()
	end,
})

local Slider = miscTab:CreateSlider({
	Name = "Change FOV",
	Range = {0, 120},
	Increment = 1,
	Suffix = "",
	CurrentValue = 10,
	Flag = "g34yh8t547yt87ero999999",
	Callback = function(Value)
		workspace.CurrentCamera.FieldOfView = Value
	end,
})

