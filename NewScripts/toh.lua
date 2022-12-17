local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Blackout Privet | '..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Tower of hell'),
    Advanced = Window:AddTab('Advanced'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
local FaggotSlut = game:GetService("Workspace").tower.finishes:FindFirstChild("Finish")
local cumslut = game:GetService("Workspace").tower.sections.start.center



for i,v in pairs(game:GetService("Workspace").tower.sections.finish.ChristmasSnow:GetChildren()) do
    if v.Name == "Particle" then
        v:Destroy()
    end
end

for i, v in pairs(game:GetService("Workspace").tower.walls[1]:GetChildren()) do
    if v.Name =="killwall" then
        v:Destroy()
    end
end

_G.isDisabled = false

function disable1()
    if _G.isDisabled == false then
        local reg = getreg()
    
        for i, Function in next, reg do
            if type(Function) == 'function' then
                local info = getinfo(Function)
    
                if info.name == 'kick' then
                    if (hookfunction(info.func, function(...)end)) then
                        print'succesfully hooked kick'
                        _G.isDisabled = true
                    else
                        print'failed to hook kick'
                    end
                end
            end
        end
    end
end

function disable2()
    if _G.isDisabled == false then
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
        _G.isDisabled = true
    end
end

function win()
    hrp.CFrame = FaggotSlut.CFrame
end
function lose()
    hrp.CFrame = cumslut.CFrame
end

function gettools()
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
end

function destroytools()
    for _,e in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
        if e:IsA("Tool") then
            e:Destroy()
        end
    end
end


function speedcoil()
    for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") and v.Name == "speed" then
            local CloneThings = v:Clone()
            wait()
            CloneThings.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
function trowel()
    for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") and v.Name == "trowel" then
            local CloneThings = v:Clone()
            wait()
            CloneThings.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
function fusioncoil()
    for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") and v.Name == "fusion" then
            local CloneThings = v:Clone()
            wait()
            CloneThings.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
function gravitycoil()
    for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") and v.Name == "gravity" then
            local CloneThings = v:Clone()
            wait()
            CloneThings.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
function jumpcoil()
    for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") and v.Name == "jump" then
            local CloneThings = v:Clone()
            wait()
            CloneThings.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
function hook()
    for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") and v.Name == "hook" then
            local CloneThings = v:Clone()
            wait()
            CloneThings.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
function yxterminator()
    for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") and v.Name == "yxterminator" then
            local CloneThings = v:Clone()
            wait()
            CloneThings.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
function hourglass()
    for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") and v.Name == "hourglass" then
            local CloneThings = v:Clone()
            wait()
            CloneThings.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
function killpart()
    for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") and v.Name == "killpart" then
            local CloneThings = v:Clone()
            wait()
            CloneThings.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
function bomb()
    for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") and v.Name == "bomb" then
            local CloneThings = v:Clone()
            wait()
            CloneThings.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
function copy2()
    setclipboard("I acknowledge that I have been banned justly for exploiting and hereby agree that I will not to do so again. Furthermore agree to have all my progress in the game deleted and wait 7 more days until I am am unbanned.")
end

local hopfolder = Instance.new("Folder")
hopfolder.Name = "truss for climbing"
hopfolder.Parent = game:GetService("Workspace")


function ladders()
end
function noladders()
end

local ACDisabler = Tabs.Main:AddLeftGroupbox('AC Disabler')
local player = Tabs.Main:AddLeftGroupbox('Local Player')
local Boxes = Tabs.Main:AddRightGroupbox('Boxes')
local others = Tabs.Main:AddRightGroupbox('Others')
local stuff = Tabs.Advanced:AddLeftGroupbox('Stuff')

ACDisabler:AddButton('Flooder', function() disable1() end)
ACDisabler:AddButton('Destroy', function() disable2() end)

player:AddSlider('speed', {
    Text = 'Speed',
    Default = 16,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Compact = false,
})
player:AddSlider('jumppower', {
    Text = 'Jump Power',
    Default = 50,
    Min = 0,
    Max = 150,
    Rounding = 1,
    Compact = false,
})
player:AddSlider('gravity', {
    Text = 'Gravity',
    Default = 196.2,
    Min = 0,
    Max = 196.2,
    Rounding = 1,
    Compact = false,
})


player:AddToggle('infjump', {
    Text = 'Inf jump',
    Default = false,
    Tooltip = 'inf jumps',
})
Toggles.infjump:OnChanged(function()
    while Toggles.infjump.Value == true do
        wait()
        game:GetService("ReplicatedStorage").globalJumps.Value = 1298072
		if Toggles.infjump.Value == false then
			game:GetService("ReplicatedStorage").globalJumps.Value = 0
        end
    end
end)
player:AddToggle('flyjump', {
    Text = 'Fly jump',
    Default = false,
    Tooltip = 'inf jumps but for lazy people :)',
})
Toggles.flyjump:OnChanged(function()
    game:GetService("UserInputService").JumpRequest:connect(function()
        if true and Toggles.flyjump.Value == true then
            for i,v in pairs(game:GetService'Players'.LocalPlayer.PlayerScripts:GetChildren()) do
                if v.Name == "LocalScript" or v.Name == "LocalScript2" then
                    v:Destroy()
                    _G.isDisabled = true
                end
            end
            wait()
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)
end)
player:AddToggle('clicktp', {
    Text = 'CTRL + Click Tp',
    Default = false,
    Tooltip = 'click click :3',
})
Toggles.clicktp:OnChanged(function()
    local UIS = game:GetService("UserInputService")
    local Player = game.Players.LocalPlayer
    local Mouse = Player:GetMouse()

    function GetCharacter()
        return game.Players.LocalPlayer.Character
    end

    function Teleport(pos)
        local Char = GetCharacter()
        if Char then
            Char:MoveTo(pos)
        end
    end

    UIS.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and Toggles.clicktp.Value == true then
            Teleport(Mouse.Hit.p)
        end
    end)
end)
player:AddToggle('Godmode', {
    Text = 'God Mode',
    Default = false,
    Tooltip = 'you are too shit so you turned this on lol',
})
Toggles.Godmode:OnChanged(function()
    while Toggles.Godmode.Value == true do
        wait()
        local me = game.Players.LocalPlayer.Name
		for i,v in pairs(game:GetService("Workspace")[me]:GetChildren()) do
			if v.Name == "hitbox" then
				v:ClearAllChildren()
				wait()
			end
		end
    end
end)

Options.speed:OnChanged(function()
    game:GetService("ReplicatedStorage").globalSpeed.Value = Options.speed.Value
end)
Options.jumppower:OnChanged(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = Options.jumppower.Value
end)
Options.gravity:OnChanged(function()
    game.Workspace.Gravity = Options.gravity.Value
end)

Boxes:AddToggle('boxauto', {
    Text = 'Auto open Boxes',
    Default = false,
    Tooltip = 'why tf would you need this',
})
Toggles.boxauto:OnChanged(function()
    while Toggles.boxauto.Value == true do
        game:GetService("ReplicatedStorage").openBox:InvokeServer("Regular")
		wait()
    end
end)

others:AddButton('Win', function() win() end)
others:AddButton('Tp to Center', function() lose() end)
others:AddButton('Copy Appeal Text', function() copy2() end)

others:AddLabel('Tools')
others:AddButton('Get All Tools', function() gettools() end)
others:AddButton('Destroy Tools', function() destroytools() end)

others:AddDivider()

others:AddButton('Get Speed Coil', function() speedcoil() end)
others:AddButton('Get Fusion Coil', function() fusioncoil() end)
others:AddButton('Get Gravity Coil', function() gravitycoil() end)
others:AddButton('Get Jump Coil', function() jumpcoil() end)
others:AddButton('Get Trowel', function() trowel() end)
others:AddButton('Get Hook', function() hook() end)
others:AddButton('Get YXTerminator', function() yxterminator() end)
others:AddButton('Get Hourglass', function() hourglass() end)
others:AddButton('Get KillPart', function() killpart() end)
others:AddButton('Get Bomb', function() bomb() end)

stuff:AddButton('Spawn ladder', function() ladders() end)
stuff:AddButton('Destroy ladders', function() noladders() end)


Library:SetWatermarkVisibility(false)
Library:SetWatermark('have sex with Vo')


Library.KeybindFrame.Visible = true;

Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)


local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddToggle("Keybinds", { Text = "Show Keybinds Menu", Default = false }):OnChanged(function()
    Library.KeybindFrame.Visible = Toggles.Keybinds.Value
end)
MenuGroup:AddToggle("Watermark", { Text = "Show Watermark", Default = false }):OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.Watermark.Value)
end)
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RShift', NoUI = true, Text = 'Menu keybind' }) 

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
ThemeManager:ApplyToTab(Tabs['UI Settings'])