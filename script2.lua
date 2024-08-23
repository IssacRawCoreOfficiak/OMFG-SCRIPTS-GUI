lua
player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end

-- fake chat messages
for _, player in pairs(game.Players:GetPlayers()) do
local chat = Instance.new("Message")
chat.Text = player.Name.. " says: Player is a big king!"
chat.Parent = game.StarterGui.Chat
wait(0.5)
end

-- gun model
local gun = Instance.new("Model")
gun.Name = "Gun"
gun.Parent = workspace

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1, 1, 1)
handle.Anchored = true
handle.Parent = gun

local barrel = Instance.new("Part")
barrel.Name = "Barrel"
barrel.Size = Vector3.new(1, 1, 1)
barrel.Anchored = true
barrel.Parent = gun

-- gun animation
local animation = Instance.new("Animation")
animation.Name = "GunAnimation"
animation.Parent = gun

local animator = Instance.new("Animator")
animator.Parent = gun

animation:Play()

-- fire sound effect
local fireSound = Instance.new("Sound")
fireSound.SoundId = "rbxassetid://18841895742" -- fire sound id
fireSound.Volume = 10
fireSound.Looped = true -- loop the sound
fireSound.Parent = gun

fireSound:Play()
end
end

button.MouseButton1Click:Connect(function()
local player = game.Players:FindFirstChild("Player")
adminCommands.kick(player)
end)

-- make gun model visible to everyone
gun.Parent = game.Workspace

gui.Parent = game.Players.LocalPlayer.PlayerGui
