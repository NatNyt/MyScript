if game.PlaceId == 2753915549 or  game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
    BF = true
end
if not BF then return; end

repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
repeat wait() until game:GetService("ReplicatedStorage"):FindFirstChild("Remotes"):FindFirstChild("CommF_")

local JoinServer = (function () 
        return {
            [2753915549] = "TravelMain",
            [4442272183] = "TravelDressrosa",
            [7449423635] = "TravelZou"
        }
end)();


if BF then 
    local args = {...}
    print(type(args[1]), type(args[2]))
    if type(args[1]) ~= "string" and type(args[2]) ~= "number" then return; end
    if game.PlaceId ~= args[2] then 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(JoinServer[args[2]])
        game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
            if State == Enum.TeleportState.Started then
                if syn then 
                    syn.queue_on_teleport("loadstring(game:HttpGet'https://raw.githubusercontent.com/NatNyt/MyScript/main/BloxFruitTeleport.lua'){" .. '"'.. args[1] .. '"' .. args[2] .. "}")   
                end
                if queue_on_teleport then 
                    queue_on_teleport("loadstring(game:HttpGet'https://raw.githubusercontent.com/NatNyt/MyScript/main/BloxFruitTeleport.lua'){" .. '"'.. args[1] .. '"' .. args[2] .. "}")    
                end
            end
        end)
        return; 
    end
    game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport",args[1])
else 
    return;
end
