	  -- MENU UI
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "HackMenu"
local ToggleButton = Instance.new("TextButton", ScreenGui)
ToggleButton.Size = UDim2.new(0, 100, 0, 30)
ToggleButton.Position = UDim2.new(0, 10, 0, 10)
ToggleButton.BackgroundColor3 = Color3.new(0,0,0)
ToggleButton.Text = "MENU"
ToggleButton.TextColor3 = Color3.new(1,1,1)
ToggleButton.TextScaled = true

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 400)
Frame.Position = UDim2.new(0, 10, 0, 50)
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Visible = false
Frame.Active = true
Frame.Draggable = true

ToggleButton.MouseButton1Click:Connect(function()
	Frame.Visible = not Frame.Visible
end)

local UIS = game:GetService("UserInputService")

function CreateToggle(name, default, callback)
	local Toggle = Instance.new("TextButton", Frame)
	Toggle.Size = UDim2.new(1, -20, 0, 30)
	Toggle.Position = UDim2.new(0, 10, 0, #Frame:GetChildren()*35)
	Toggle.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	Toggle.TextColor3 = Color3.new(1, 1, 1)
	Toggle.TextScaled = true
	Toggle.Text = name .. ": " .. (default and "ON" or "OFF")

	local enabled = default
	Toggle.MouseButton1Click:Connect(function()
		enabled = not 
