repeat task.wait() until game:IsLoaded()

local BF = false
if game.PlaceId == 2753915549 or  game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
        BF = true
    end
if not BF then return; end

repeat task.wait() until game:GetService("Players").LocalPlayer
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main

task.spawn(function() 
	loadstring(game:HttpGet'https://raw.githubusercontent.com/NatNyt/MyScript/main/RobloxAdsPromoteOrSomethingIDK.lua')()
end)
if not  getgenv().SelectTeam  then
   return; 
end
if getgenv().Teams == nil then 
	getgenv().Teams = "Pirates"
end
local join = game.Players.localPlayer.Neutral == false
if (getgenv().Teams == "Pirates" or getgenv().Teams == "Marines") and not join then
    repeat wait()
        pcall(function()
                join = game.Players.localPlayer.Neutral == false
                if getgenv().Teams == "Pirates" then
                    for i, v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                        for i, v in pairs(
                            getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
                            v.Function()
                        end
                    end
                elseif getgenv().Teams == "Marines" then
                    for i, v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                        for i, v in pairs(
                            getconnections(
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
                            v.Function()
                        end
                    end
                else
                    for i, v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                        for i, v in pairs(
                            getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
                            v.Function()
                        end
                    end
                end
            end)
    until (game.Players.localPlayer.Neutral == false) == true
end
repeat wait() until (game.Players.localPlayer.Neutral == false) == true
return;
