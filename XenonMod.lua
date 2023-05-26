repeat wait() until game:IsLoaded()

local pbag = ({...})[1]
local args = ""
for i, v in pairs(pbag) do 
	if i == 1 then 
		args = args .. tostring(v) 
	else
		args = args  .. ',' .. tostring(v) 
	end
end

local queue_teleport = (function() 
    if typeof(queue_on_teleport) == "function" then
        return queue_on_teleport
    end
    if typeof(syn) == "table" then 
        return syn.queue_on_teleport
    end
end)()
if typeof(queue_teleport) == "function" then 
     queue_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/NatNyt/MyScript/main/XenonMod.lua')){" .. args .. "}")
end

loadstring("loadstring(game:HttpGet('https://raw.githubusercontent.com/Xenon-Trash/Loader/main/Loader.lua')){" .. args .. "}")()
