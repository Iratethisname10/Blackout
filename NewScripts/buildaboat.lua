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
    AutoFarm = Window:AddTab('AutoFarm'),
    Boxes = Window:AddTab('Boxes'),
    Misc = Window:AddTab('Misc'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}


local  AutoFarmBox1 = Tabs.AutoFarm:AddLeftGroupbox('Teleport')
local  AutoFarmBox2 = Tabs.AutoFarm:AddRightGroupbox('Tween')
local  AutoFarmBox3 = Tabs.AutoFarm:AddLeftGroupbox('Funny')
local  BoxesBox = Tabs.Boxes:AddLeftGroupbox('Main')
local  MiscBox = Tabs.Misc:AddLeftGroupbox('Main')

--//tween
local teleport_table = {
    location1 = Vector3.new(-68.1604, 71.1, 8706.03)
}
local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(30,Enum.EasingStyle.Linear)
local lp = game.Players.LocalPlayer
function tweenfarm(v)
    if lp.Character and 
    lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
        a.Completed:Wait()

    end
end

--//funny
local teleport_table = {
    location1 = Vector3.new(-183.39, 1.21138, 1297.06),
    location2 = Vector3.new(-56.3885, 55.3882, 1347.63),
    location3 = Vector3.new(-48.6925, 28.5011, 1384.65),
    location4 = Vector3.new(-45.7768, 58.957, 2123.8),
    location5 = Vector3.new(-38.7215, 15.007, 2156.1),
    location6 = Vector3.new(-31.6374, 59.5748, 2897.63),
    location7 = Vector3.new(-47.8358, 59.5733, 2929.21),
    location8 = Vector3.new(-27.1591, 73.6039, 3664.81),
    location9 = Vector3.new(-42.0245, 73.6034, 3699.22),
    location10 = Vector3.new(-28.8798, 67.2452, 4430.6),
    location11 = Vector3.new(-37.1864, 67.6017, 4462.88),
    location12 = Vector3.new(0.140504, 53.7096, 5206.41),
    location13 = Vector3.new(-17.7665, 53.7093, 5231.74),
    location14 = Vector3.new(-27.7296, 35.0556, 5976.13),
    location15 = Vector3.new(-51.8671, 35.0602, 6003.17),
    location16 = Vector3.new(-32.8864, 35.2167, 6746.11),
    location17 = Vector3.new(-38.9239, 35.2178, 6771.91),
    location18 = Vector3.new(-37.1517, 34.5894, 7514.7),
    location19 = Vector3.new(-39.3099, 34.5908, 7543.11),
    location20 = Vector3.new(-174.88, 3.25, 179.71),
    location21 = Vector3.new(-13.3118, 24.4273, 8311.16)
}
local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(10,Enum.EasingStyle.Linear)
local lp = game.Players.LocalPlayer
function Funnyfarm(v)
    if lp.Character and 
    lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
        a.Completed:Wait()

    end
end


AutoFarmBox1:AddToggle('TpFram', {
    Text = 'Start Farm',
    Default = false,
    Tooltip = 'Teleports',
})
AutoFarmBox1:AddDivider()
Toggles.TpFram:OnChanged(function()
    while Toggles.TpFram.Value == true do
        game:GetService("Workspace").Gravity = Options.TpGravity.Value
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage1:FindFirstChild("DarknessPart").CFrame
		wait(Options.TpWaitdelay.Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage2:FindFirstChild("DarknessPart").CFrame
		wait(Options.TpWaitdelay.Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage3:FindFirstChild("DarknessPart").CFrame
		wait(Options.TpWaitdelay.Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage4:FindFirstChild("DarknessPart").CFrame
		wait(Options.TpWaitdelay.Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage5:FindFirstChild("DarknessPart").CFrame
		wait(Options.TpWaitdelay.Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage6:FindFirstChild("DarknessPart").CFrame
		wait(Options.TpWaitdelay.Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage7:FindFirstChild("DarknessPart").CFrame
		wait(Options.TpWaitdelay.Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage8:FindFirstChild("DarknessPart").CFrame
		wait(Options.TpWaitdelay.Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage9:FindFirstChild("DarknessPart").CFrame
		wait(Options.TpWaitdelay.Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage10:FindFirstChild("DarknessPart").CFrame
		wait(Options.TpWaitdelay.Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages.TheEnd.GoldenChest:FindFirstChild("Trigger").CFrame
		game:GetService("Workspace").Gravity = 192
        if Toggles.triggernotify.Value == true then
            Library:Notify("Touched nig- i mean trigger")
        end
        if Toggles.finnishnotify.Value == true then
            Library:Notify("Finnished")
        end
		wait(Options.finnishwaitdelay.Value)
    end
end)
AutoFarmBox1:AddSlider('TpWaitdelay', {
    Text = 'wait Delay',
    Default = 3,
    Min = 0.2,
    Max = 15,
    Rounding = 1,
    Compact = false,
})
AutoFarmBox1:AddSlider('TpGravity', {
    Text = 'Gravity',
    Default = 0,
    Min = 0,
    Max = 30,
    Rounding = 1,
    Compact = false,
})
AutoFarmBox1:AddSlider('finnishwaitdelay', {
    Text = 'Finnsh Wait Delay',
    Default = 20,
    Min = 5,
    Max = 30,
    Rounding = 1,
    Compact = false,
})
AutoFarmBox1:AddToggle('triggernotify', {
    Text = 'Notify When trigger',
    Default = false,
    Tooltip = 'Notifies when you touch the trigger',
})
AutoFarmBox1:AddToggle('finnishnotify', {
    Text = 'Notify When Finnish',
    Default = false,
    Tooltip = 'Notifies when finnished',
})


AutoFarmBox3:AddToggle('Funnyfarm', {
    Text = 'Start Farm',
    Default = false,
    Tooltip = 'funnny hee hee',
})
Toggles.Funnyfarm:OnChanged(function()
    while Toggles.Funnyfarm.Value == true do
        game:GetService("Workspace").Gravity = 0
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-185.616882, -6.87517929, 1167.76025, 0.885669053, 4.23262314e-08, -0.464317083, 5.56771029e-09, 1, 1.01778248e-07, 0.464317083, -9.27270278e-08, 0.885669053)
        wait(3)--start
        Funnyfarm(teleport_table.location1)--start point
        wait(2)--start to 1
        Funnyfarm(teleport_table.location2)--1
        Funnyfarm(teleport_table.location3)--1
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.3045807, 54.1916618, 2123.40259, -0.0116735362, 0.0581870191, -0.998237431, 9.61019442e-09, 0.99830544, 0.0581909828, 0.999931872, 0.000679284974, -0.0116537558)
        wait()--1 to 2
        Funnyfarm(teleport_table.location4)--2
        Funnyfarm(teleport_table.location5)--2
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-32.1788712, 69.8042221, 2896.81519, -0.94821316, 0.0270962175, -0.316476882, -1.00239612e-08, 0.996354759, 0.0853062496, 0.317634732, 0.0808885098, -0.944756687)
        wait()--2 to 3
        Funnyfarm(teleport_table.location6)--3
        Funnyfarm(teleport_table.location7)--3
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28.5524559, 88.663559, 3663.47729, -0.971846879, 0.00385456043, 0.235581815, 9.00486707e-09, 0.999866188, -0.0163596496, -0.235613346, -0.0158990715, -0.971716821)
        wait()--3 to 4
        Funnyfarm(teleport_table.location8)--4
        Funnyfarm(teleport_table.location9)--4
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(22.4097767, 47.818512, 4430.50195, -0.888100564, 0.0425350703, 0.457676888, -1.61012483e-08, 0.995709121, -0.0925381556, -0.459649175, -0.0821831971, -0.884289861)
        wait()--4 to 5
        Funnyfarm(teleport_table.location10)--5
        Funnyfarm(teleport_table.location11)--5
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13.5714436, 76.4937363, 5207.19678, -0.966390848, 0.0115368189, -0.256818235, 1.04130686e-08, 0.998992503, 0.0448768213, 0.257077247, 0.0433685482, -0.965417266)
        wait()--5 to 6
        Funnyfarm(teleport_table.location12)--6
        Funnyfarm(teleport_table.location13)--6
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-52.0470161, 61.2079048, 5951.37158, -0.994338274, -0.0196102448, 0.104435802, -7.13680892e-09, 0.982823551, 0.184547842, -0.106260993, 0.183502987, -0.97725904)
        wait()--6 to 7
        Funnyfarm(teleport_table.location14)--7
        Funnyfarm(teleport_table.location15)--7
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-72.3146896, 73.435585, 6746.9082, -0.923611104, 0.0184810311, -0.382885009, 8.92062335e-09, 0.998837113, 0.0482116826, 0.383330792, 0.044528842, -0.922537088)
        wait()--7 to 8
        Funnyfarm(teleport_table.location16)--8
        Funnyfarm(teleport_table.location17)--8
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-40.955883, 107.390892, 7516.99951, -0.997526467, -0.00434049591, 0.0701574981, 4.99982056e-09, 0.998091638, 0.0617498904, -0.0702916384, 0.0615971498, -0.995622873)
        wait()--8 to 9
        Funnyfarm(teleport_table.location18)--9
        Funnyfarm(teleport_table.location19)--9
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.4707184, 86.6148605, 8287.52344, -0.998861253, -0.00632998487, 0.047288131, 8.59364313e-09, 0.991159379, 0.132676676, -0.0477099158, 0.132525593, -0.990030646)
        wait()--9 to 10
        Funnyfarm(teleport_table.location20)--10
        Funnyfarm(teleport_table.location21)--10
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        wait(5)--end
        game:GetService("Workspace").Gravity = 192
    end
end)

AutoFarmBox3:AddToggle('autoreedem', {
    Text = 'Auto Gold (Must Enable)',
    Default = false,
    Tooltip = 'Gold',
})
Toggles.autoreedem:OnChanged(function()
    while Toggles.autoreedem.Value == true do
        wait()
        workspace.ClaimRiverResultsGold:FireServer()
    end
end)

AutoFarmBox2:AddToggle('TweenFarm', {
    Text = 'Start Farm',
    Default = false,
    Tooltip = 'Moves',
})
Toggles.TweenFarm:OnChanged(function()
    while Toggles.TweenFarm.Value == true do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-68.1604004, 71.0999985, -158.970001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        tweenfarm(teleport_table.location1)
        wait(5)
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end)



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