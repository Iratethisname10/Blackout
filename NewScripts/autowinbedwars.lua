repeat
    task.wait()
until game:IsLoaded()

pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

game.StarterGui:SetCore("SendNotification",  {
    Title = "MADE BY Vo#1092";
    Text = "Auto Win Made By Vo#1092";
    Icon = "";
    Duration = 15;
})

function xprint(s)
    if rconsoleprint then
        rconsoleprint(s .. '\n')
    end
end

function stop(s)
    beds = false
    for i, v in next, workspace:GetChildren() do
        if v.Name == "bed" and tostring(v.Covers.BrickColor) == s then
            x = true
        end
        if v.Name == 'bed' and tostring(v.Covers.BrickColor) ~= tostring(game:service'Players'.LocalPlayer.TeamColor) then
            beds = true
        end
    end
    if beds == false then
        if getgenv().killed == nil then
            game:service "Players".LocalPlayer.Character.Humanoid.Health = 0
            getgenv().killed = true
        end
       return 1
    end
    if x == true then
        x = false
        return "hi"
    else
        return nil
    end
end

task.spawn(function()
    while task.wait(13.1) do
        pcall(function()
            xprint('Reset Timer (13.1s)')
            if stop(tostring(game:service'Players'.LocalPlayer.TeamColor)) ~= nil then
                workspace:WaitForChild(game:service'Players'.LocalPlayer.Name):WaitForChild('Humanoid').Health = 0
                workspace:WaitForChild(game:service'Players'.LocalPlayer.Name):WaitForChild('Humanoid'):ChangeState('Dead')
            end
        end)
    end
end)


game:service "Players".LocalPlayer.Character.Humanoid.Health = 0

local function bedtp()
    task.wait(0.1)
    char = game:service "Players".LocalPlayer.Character
    bedtablex = {}
    for i, v in next, workspace:GetChildren() do
        if v.Name == "bed" then
            table.insert(bedtablex, tostring(v.Covers.BrickColor))
        end
    end

    if stop('trans pride!') == 1 then
        for i,v in next, game:service'Players':GetPlayers() do
            task.wait()
            if v.Character and v.Character.PrimaryPart and v.TeamColor ~= game:service'Players'.LocalPlayer.TeamColor then
                xprint(v.Name .. ' < plr target')
                while task.wait(0.1) and v.Character and v.Character.Humanoid.Health > 0 do
                    pcall(function()
                        char:PivotTo(CFrame.new(v.Character.PrimaryPart.Position))
                    end)
                end
            end
        end
    end

    for i,v in next, bedtablex do
        for x,bed in next, workspace:GetChildren() do
            if bed.Name == "bed" and tostring(bed.Covers.BrickColor) == v and tostring(bed.Covers.BrickColor) ~= tostring(game:service'Players'.LocalPlayer.TeamColor) then
                xprint(v .. ' < bed target')
                char:PivotTo(CFrame.new(bed.Position + Vector3.new(0,20,0)))
                repeat task.wait() until stop(v) == nil
                game:service "Players".LocalPlayer.Character.Humanoid.Health = 0
            end
        end
    end
end

game:service "Players".LocalPlayer.CharacterAdded:Connect(bedtp)