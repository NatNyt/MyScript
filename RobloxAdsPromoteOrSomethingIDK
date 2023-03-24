repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("CoreGui")
if not isfile("Promotes.png") then
	local request = (syn and syn.request) or request or (http and http.request) or http_request
	writefile("Promotes.png", http.request({Url = "https://media.discordapp.net/attachments/956447972290334751/1088785624393330718/Untitled.png", Method = "GET"}).Body)
end

local getAssets = getsynasset or getcustomasset
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 1, 0)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.0362563208, 0, 0.0710723177, 0)
ImageLabel.Size = UDim2.new(0.330522776, 0, 0.814214468, 0)
ImageLabel.Image = getcustomasset("Promotes.png")

wait(15)

ScreenGui:Destroy()
