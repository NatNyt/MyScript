repeat game:GetService("RunService").Heartbeat:Wait() until game:IsLoaded()
local ImagePath = "https://i.imgur.com/oPfYCrK.png" -- You can custom it 
if typeof(getsynasset) ~= 'function' or typeof(getsynasset) ~= 'function' then
	print('Your Executor is not support')
	return
end

if not isfile('wallpaper.png') then 
	writefile("wallpaper.png", request({Url = ImagePath,Method = "GET"}).Body)
end

repeat game:GetService("RunService").Heartbeat:Wait() until _G.LOADED and game:GetService("CoreGui"):FindFirstChild("ScreenGui") --Check Xenon Load

local Frame = nil

repeat wait()
	Frame = (function()
		local UI = game:GetService("CoreGui"):WaitForChild("ScreenGui")
		for i, v in pairs(UI:GetChildren()) do 
			if v:IsA("Frame") then 
				local FrameFake = v:FindFirstChild("Frame")
				if FrameFake then 
					local Label = FrameFake:FindFirstChild("TextLabel")
					local Frame = FrameFake:FindFirstChild("Frame")
					if Frame and Label then 
						if Frame:FindFirstChild("Frame") then 
							return Frame
						end
					end
				end
			end
		end
		return nil
	end)()
until typeof(Frame) ~= "nil"

if typeof(Frame) == "nil" then return; end

local ImageLabel = Instance.new("ImageLabel")
local MainFrame = Frame.Parent

local Path = (function() 
	for i, v in pairs(Frame:GetDescendants()) do 
		if v.Name == "ScrollingFrame" then 
			return v.Parent
		end
	end
end)()

ImageLabel.Parent = Path
ImageLabel.BackgroundColor3 = MainFrame. BackgroundColor3
ImageLabel.Size = MainFrame.Size
ImageLabel.BorderSizePixel = 0
ImageLabel.AnchorPoint = MainFrame.AnchorPoint
ImageLabel.Position = MainFrame.Position
ImageLabel.Image = getcustomasset("wallpaper.png")
ImageLabel.ZIndex = 4

for i, v in pairs(Frame:GetDescendants()) do 
	if v.Name == "ScrollingFrame" then 
		for w, l in pairs(v:GetChildren()) do 
			if l:IsA("Frame") then 
				for k,x in pairs(l:GetChildren()) do 
					if x:IsA("Frame") then 
						local q = x.Frame
						q.BackgroundTransparency = 1
						x.BackgroundTransparency = 1
					end
				end
			end
		end
	end
	if v:IsA("TextLabel") or v:IsA("TextBox") then 
		v.TextStrokeTransparency = 1
	end
	if v:IsA("Frame") then
		v.BorderSizePixel = 0
	end
end

for i, v in pairs(Frame:FindFirstChild("Frame"):GetChildren()) do 
	if v:FindFirstChild("UIListLayout") then 
		for w, k in pairs(v:GetChildren()) do 
			if k:IsA("Frame") then 
				k.BorderSizePixel = 1
			end
		end
	end
end
