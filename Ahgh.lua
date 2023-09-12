local v1 = getgenv;
local v2 = game;
local v3 = v2:GetService("Players");
local v4 = v3.LocalPlayer;
local v5 = task;
local v6 = v5.wait;
local v7 = {2753915549,4442272183,7449423635}
local v8 = v2.PlaceId;
local v9 = table;
local v10 = v9.find;
local v11 = v5.spawn;
local v14 = nil;
local v16 = v2:GetService("TeleportService");
local v17 = 0;
local v12 = (function () 
	while true do 
		pcall(function()
            local v13 = v4.Character or v4.CharacterAdded:Wait()
            if v13 then
                local v15 = v13.PrimaryPart
                if v14 then 
                    if  v1().Disntace >= (v14 - v13.PrimaryPart.Position).Magnitude  then
                        if v17 >= v1().TryAgain then
                            v16:Teleport(v8, v4)
                        end
                        v17 = v17 + 1;
                    else
                        v14 = v13.PrimaryPart.Position
                    end
                end
                if v14 == nil then v14 = v15.Position end
            end
        end)
		v6(v1().Cooldown) 
	end
end)
repeat v6() until v2:IsLoaded()
if not v10(v7,v8) then return;end
if not v1().Cooldown then v1().Cooldown = 10 end
if not v1().Disntace then v1().Disntace = 30 end
if not v1().TryAgain then v1().TryAgain = 5 end
v11(v12);
