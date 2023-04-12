repeat game:GetService("RunService").RenderStepped:Wait() until game:IsLoaded()
repeat game:GetService("RunService").RenderStepped:Wait() until game:GetService('Workspace'):FindFirstChild('Map')

print('Loaded')

getgenv().Webhook = "Nah" or "Nah" 

task.spawn(function() 
  loadstring(game:HttpGet'https://raw.githubusercontent.com/NatNyt/MyScript/main/RobloxAdsPromoteOrSomethingIDK.lua')() --โหลอย่าลบกุหิวตัง
end)

local Maps = game:GetService('Workspace'):FindFirstChild('Map')
local HttpService = game:GetService("HttpService")

local function len(x)
	local q = 0
	for i, v in pairs(x) do
		q = q + 1
	end
	return q
end
local function HttpRequest(...) 
	local args = {...}
	local status, result = pcall(function() 
		if syn then 
			if syn.request then 
				return syn.request
			end
		end
		if http then 
			if http.request then 
				return http.request
			end
		end
		if request then  
			return request
		end
	end) 
	if status then 
		return result(args[1])
	end
	if not status then
		return request(args[1])
	end
end
if Maps:FindFirstChild("MysticIsland") then 
    print("Mapoz")
	local MysticIsland = (function() 
		if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
			return "Yes"
		else 
			return "No"
		end
	end)()
	local FullMoon = (function() 
		if game:GetService("Lighting"):FindFirstChild("Sky").MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
			return "5 / 5 🌕"
		elseif game:GetService("Lighting"):FindFirstChild("Sky").MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then 
			return "4 / 5 🌖"
		else 
			return "Unknow"
		end
	end)()
	local MaxPlayers = game:GetService("Players").MaxPlayers
	local PlayersList = len(game:GetService("Players"):GetPlayers())
	local JobID = game.JobId
	local World = (function() 
		if game.PlaceId == 7449423635 then 
			return "Zou (3)"
		elseif game.PlaceID == 2753915549 then 
			return "Dressrosa (2)"
		else 
			return "Main (1)"
		end
	end)()
	local TimeServer = game:GetService("Lighting").TimeOfDay
	local ClockTime = game:GetService("Lighting").ClockTime
	local Time = (function() 
		local ClockTime = game:GetService("Lighting").ClockTime
		if ClockTime >= 19 and ClockTime <= 5 then 
			return "Night"
		else 
			return "Day"
		end
	end)();
	local embed = string.gsub(
		string.gsub(
			string.gsub(
				string.gsub(
					string.gsub(
						string.gsub(
							string.gsub( 
								string.gsub([=[
                                    {
	                                        "color": 16776181,
											"title": "Mystic Island Notify",
											"fields": [
											{
												"name": "Scripts",
												"inline": false,
												"value": "```game:GetService(\"ReplicatedStorage\").__ServerBrowser:InvokeServer(\"teleport\", \"{jb}\")```"
											}, 
											{
												"name": "Job ID",
												"inline": true,
												"value": "```\n{jb}```"
											}, 
											{
												"name": "Players",
												"inline": true,
												"value": "```\n{player}/{max}```"
											}, {
												"name": "Day/Night",
												"inline": true,
												"value": "```\n {time} ```"
											}, {
												"name": "Time Server",
												"inline": true,
												"value": "```\n{ts}```"
											}],
											"image": {
												"url": "https://media.discordapp.net/attachments/1071121457352028233/1071123192107773999/ezgif-2-cf057197f6.gif"
											}
										}
                                ]=], "{player}", tostring(PlayersList)
								), "{max}",tostring(MaxPlayers)
							), "{time}", tostring(Time)
						), "{ts}", tostring(TimeServer)
					), "{jb}", tostring(JobID)
				), "{w}", World
			), "{f}", FullMoon
		), "{Mystic}", MysticIsland
	)
	local Payload = {
		["embeds"] = {
			game:GetService("HttpService"):JSONDecode(embed)
		}
	}
	local url = getgenv().Webhook
	local respone = HttpRequest({
		Url = url,
		Headers = {
			["Content-Type"] = "application/json"
		},
		Method = "POST",
		Body = game:GetService("HttpService"):JSONEncode(Payload)
	})
    print(respone.Body)
end

Maps.ChildAdded:Connect(function(event) 
	if Maps:FindFirstChild("MysticIsland") then 
		local MysticIsland = (function() 
			if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					return "Yes"
				else 
					return "No"
				end
			end)()
			local FullMoon = (function() 
				if game:GetService("Lighting"):FindFirstChild("Sky").MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
					return "5 / 5 🌕"
				elseif game:GetService("Lighting"):FindFirstChild("Sky").MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then 
					return "4 / 5 🌖"
				else 
					return "Unknow"
				end
			end)()
			local MaxPlayers = game:GetService("Players").MaxPlayers
			local PlayersList = len(game:GetService("Players"):GetPlayers())
			local JobID = game.JobId
			local World = (function() 
				if game.PlaceId == 7449423635 then 
					return "Zou (3)"
				elseif game.PlaceID == 2753915549 then 
					return "Dressrosa (2)"
				else 
					return "Main (1)"
				end
			end)()
			local TimeServer = game:GetService("Lighting").TimeOfDay
			local ClockTime = game:GetService("Lighting").ClockTime
			local Time = (function() 
				local ClockTime = game:GetService("Lighting").ClockTime
				if ClockTime >= 19 and ClockTime <= 5 then 
					return "Night"
				else 
					return "Day"
				end
			end)();
			local embed = string.gsub(
				string.gsub(
					string.gsub(
						string.gsub(
							string.gsub(
								string.gsub(
									string.gsub( 
										string.gsub([=[
	                                    {
	                                        "color": 16776181,
											"title": "Mystic Island Notify",
											"fields": [
											{
												"name": "Scripts",
												"inline": false,
												"value": "```game:GetService(\"ReplicatedStorage\").__ServerBrowser:InvokeServer(\"teleport\", \"{jb}\")```"
											}, 
											{
												"name": "Job ID",
												"inline": true,
												"value": "```\n{jb}```"
											}, 
											{
												"name": "Players",
												"inline": true,
												"value": "```\n{player}/{max}```"
											}, {
												"name": "Day/Night",
												"inline": true,
												"value": "```\n {time} ```"
											}, {
												"name": "Time Server",
												"inline": true,
												"value": "```\n{ts}```"
											}],
											"image": {
												"url": "https://media.discordapp.net/attachments/1071121457352028233/1071123192107773999/ezgif-2-cf057197f6.gif"
											}
										}
	                                ]=], "{player}", tostring(PlayersList)
										), "{max}",tostring(MaxPlayers)
									), "{time}", tostring(Time)
								), "{ts}", tostring(TimeServer)
							), "{jb}", tostring(JobID)
						), "{w}", World
					), "{f}", FullMoon
				), "{Mystic}", MysticIsland
			)
			local Payload = {
				["embeds"] = {
					game:GetService("HttpService"):JSONDecode(embed)
				}
			}
		local url = getgenv().Webhook
			local respone = HttpRequest({
				Url = url,
				Headers = {
					["Content-Type"] = "application/json"
				},
				Method = "POST",
				Body = game:GetService("HttpService"):JSONEncode(Payload)
			})
			if not respone then return nil end 
			if respone then 
				return respone
			end

	end
end)
