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
    MM2 = Window:AddTab('Murder Mystery 2'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}
local box1 = Tabs.MM2:AddLeftGroupbox('Farm')

function GetClosestCoin()
    local TargetDistance = Options.range.Value
    local Target
    for i, v in pairs(Workspace:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("CoinContainer") then
            for i, v in pairs(v.CoinContainer:GetChildren()) do
                if v.Name == "Coin_Server" and v.Name ~= "CollectedCoin" then
                    local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
                    if mag < TargetDistance then
                        TargetDistance = mag
                        CoinTarget = v
                    end
                end
            end
        end
    end
end



box1:AddToggle('autofarm', {
    Text = 'AutoFarm TP',
    Default = false,
    Tooltip = 'get the coins',
})
_G.farmable = true
Toggles.autofarm:OnChanged(function()
    while Toggles.autofarm.Value == true and _G.farmable == true do
        wait(Options.speeddelay.Value)
        GetClosestCoin()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CoinTarget.Position.X, CoinTarget.Position.Y + 1.5, CoinTarget.Position.Z)
    end
end)

box1:AddDivider()

box1:AddSlider('speeddelay', {
    Text = 'Tp Delay',
    Default = 0.1,
    Min = 0.1,
    Max = 5,
    Rounding = 1,
    Compact = false,
})
box1:AddSlider('range', {
    Text = 'Coin Tp Range',
    Default = 1000,
    Min = 900,
    Max = 10000,
    Rounding = 0,
    Compact = false,
})




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