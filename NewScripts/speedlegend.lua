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
    Main = Window:AddTab('Auto Farm'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

--// auto farm boxes
local HoopFarmBox = Tabs.Main:AddLeftGroupbox('Hoops')
local orbFarmBox = Tabs.Main:AddLeftGroupbox('Orbs')
local GemfarmBox = Tabs.Main:AddRightGroupbox('Gems')
local miscBox = Tabs.Main:AddRightGroupbox('Others')

--// hoop farm
HoopFarmBox:AddSlider('WaitDelay1', {
    Text = 'Delay time',
    Default = 0,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,
})

HoopFarmBox:AddToggle('HoopFarm', {
    Text = 'Farm Hoops',
    Default = false,
    Tooltip = 'Farms hoops',
})
Toggles.HoopFarm:OnChanged(function()
    while Toggles.HoopFarm.Value == true do
        wait(Options.WaitDelay1.Value)
        for i, v in pairs(game.Workspace.Hoops:GetChildren()) do
            if v.Name == "Hoop" then
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
end)

--//orb farm
orbFarmBox:AddSlider('WaitDelay2', {
    Text = 'Delay time',
    Default = 0,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,
})

orbFarmBox:AddToggle('OrbFarm', {
    Text = 'Farm orbs',
    Default = false,
    Tooltip = 'Farm Orbs',
})
Toggles.OrbFarm:OnChanged(function()
    while Toggles.OrbFarm.Value == true do
        wait(Options.WaitDelay2.Value)
        for i, v in pairs(game.Workspace.orbFolder.City:GetChildren()) do
            if v.Name ~= "Gem" then
                v.outerOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
end)

--//gem farm
GemfarmBox:AddSlider('WaitDelay3', {
    Text = 'Delay time',
    Default = 0,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,
})

GemfarmBox:AddToggle('GemFarm', {
    Text = 'Farm Gems',
    Default = false,
    Tooltip = 'Farms Gems',
})
Toggles.GemFarm:OnChanged(function()
    while Toggles.GemFarm.Value == true do
        wait(Options.WaitDelay3.Value)
        for i, v in pairs(game.Workspace.orbFolder.City:GetChildren()) do
            if v.Name == "Gem" then
                v.outerGem.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
end)


--// Auto Rebirth
miscBox:AddSlider('WaitDelay4', {
    Text = 'Delay time',
    Default = 0,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,
})

miscBox:AddToggle('AutoRebirth', {
    Text = 'Auto rebirth',
    Default = false,
    Tooltip = 'rebirth automatically',
})
Toggles.AutoRebirth:OnChanged(function()
    while Toggles.AutoRebirth.Value == true do
        wait()
        game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
        wait(Options.WaitDelay4.Value)
    end
end)


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