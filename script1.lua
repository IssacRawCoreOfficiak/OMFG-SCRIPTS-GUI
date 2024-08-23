lua
-- OMFG GUI Version 1.2.2
local gui = Instance.new("ScreenGui")
gui.BackgroundColor3 = Color3.new(1, 0, 0) -- red background

local button = Instance.new("TextButton")
local label = Instance.new("TextLabel")
local credit = Instance.new("TextLabel")
local sound = Instance.new("Sound")
local text = Instance.new("TextLabel")
local warning = Instance.new("TextLabel")

button.Parent = gui
label.Parent = gui
credit.Parent = gui
sound.Parent = gui
text.Parent = gui
warning.Parent = gui

button.Size = UDim2.new(0, 100, 0, 50)
button.Position = UDim2.new(0, 10, 0, 10)
button.Text = "OMFG GUI v1.2.2"

label.Size = UDim2.new(0, 200, 0, 30)
label.Position = UDim2.new(0, 10, 0, 70)
label.Text = "Get ready to rage! (updated 1.2.2)"

credit.Size = UDim2.new(0, 200, 0, 30)
credit.Position = UDim2.new(0, 10, 0, 100)
credit.Text = " Powered by Freaky"

text.Size = UDim2.new(0, 300, 0, 30)
text.Position = UDim2.new(0, 10, 0, 130)
text.Text = "Player attacked this server!"
text.Font = Enum.Font.SourceSans
text.TextColor3 = Color3.new(1, 1, 1) -- white text
text.TextTransparency = 0.5 -- transparent text

warning.Size = UDim2.new(0, 300, 0, 30)
warning.Position = UDim2.new(0, 10, 0, 160)
warning.Text = "WARNING: PLS IF YOU ARE READING THIS, TEST IN OTHER ACCOUNT THIS GUI IS A UPTEMPO CHAOS AND CAN KICK PLAYERS"
warning.Font = Enum.Font.SourceSans
warning.TextColor3 = Color3.new(1, 0, 0) -- red text
warning.TextStrokeColor3 = Color3.new(0, 0, 0) -- black outline

sound.SoundId = "rbxassetid://18841895741" -- music id
sound.Volume = 10
sound.Looped = true -- loop the sound

local played = false

local adminCommands = {}

adminCommands.kick = function(player)
-- stop all sounds currently playing
for _, sound in pairs(workspace:GetDescendants()) do
if sound:IsA("Sound") then
sound:Stop()
end
end

if not played then
player:Kick("Kicked by OMFG GUI admin!")
sound:Play()
played = true

-- teleport all players to me
for _, player in pairs(game.Players:GetPlayers()) do
