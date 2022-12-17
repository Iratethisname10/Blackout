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
    player = Window:AddTab('Local Player'),
    Tp = Window:AddTab('Teleports'),
    misc = Window:AddTab('Misc'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

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

local playerBox = Tabs.player:AddLeftGroupbox('Main')
local playerBox2 = Tabs.player:AddRightGroupbox('Others')
local TpBox = Tabs.Tp:AddLeftGroupbox('Main')
local GemfarmBox = Tabs.misc:AddLeftGroupbox('Main')

playerBox:AddSlider('PlayerSpeed', {
    Text = 'Speed',
    Default = 16,
    Min = 16,
    Max = 150,
    Rounding = 1,
    Compact = false,
})
Options.PlayerSpeed:OnChanged(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = Options.PlayerSpeed.Value
end)

playerBox:AddSlider('PlayerjumpPower', {
    Text = 'Jump Power',
    Default = 50,
    Min = 50,
    Max = 350,
    Rounding = 1,
    Compact = false,
})
Options.PlayerjumpPower:OnChanged(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = Options.PlayerjumpPower.Value
end)

playerBox:AddSlider('Gravity', {
    Text = 'Gravity',
    Default = 192,
    Min = 0,
    Max = 192,
    Rounding = 1,
    Compact = false,
})
Options.Gravity:OnChanged(function()
    game:GetService("Workspace").Gravity = Options.Gravity.Value
end)


playerBox2:AddToggle('NoFallDamage', {
    Text = 'No Fall Damage',
    Default = false,
    Tooltip = 'Removes fall damage',
})
Toggles.NoFallDamage:OnChanged(function()
    while Toggles.NoFallDamage.Value == true do
        wait()
        local spk = game.Players.LocalPlayer.Name
        for i, v in pairs( game:GetService('Workspace'):FindFirstChild(spk):GetChildren()) do
            if v:IsA("Script") and v.Name == "FallDamageScript" then
                v:Destroy()
            end
        end
    end
end)

local tptower = TpBox:AddButton('Tower', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").niggerballsTOWER.CFrame
end)
tptower:AddTooltip('Teleports you to the tower (-273.911, 178, 327.306)')

local tpisland = TpBox:AddButton('Island', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").niggerballsISLAND.CFrame
end)
tptower:AddTooltip('Teleports you to the tower (-94, 46.2, 72.5)')


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