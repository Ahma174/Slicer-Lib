local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local libFrame = Instance.new("Frame")
libFrame.Size = UDim2.new(0, 400, 0, 300)
libFrame.Position = UDim2.new(0.8, -200, 0.5, -150)
libFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
libFrame.Parent = screenGui
libFrame.Visible = false

local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 50, 0, 30)
minimizeButton.Position = UDim2.new(1, -60, 0, 10)
minimizeButton.Text = "_"
minimizeButton.Parent = libFrame
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0, 200, 0, 30)
titleLabel.Position = UDim2.new(0, 10, 0, 10)
titleLabel.Text = "Slicer Lib"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 18
titleLabel.BackgroundTransparency = 1
titleLabel.Parent = libFrame

local function changeTitle(newTitle)
    titleLabel.Text = newTitle
end

local function minimizeUI()
    libFrame.Visible = false
end

minimizeButton.MouseButton1Click:Connect(minimizeUI)

local userInputService = game:GetService("UserInputService")
local function toggleUI(input)
    if input.KeyCode == Enum.KeyCode.U then
        libFrame.Visible = not libFrame.Visible
    end
end

userInputService.InputBegan:Connect(toggleUI)

libFrame.Visible = true
