-- This script uses the RayField UI, which is made by shelex.

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local plr = game.Players.LocalPlayer
local chr = plr.Character

local sallyesp = Instance.new("Highlight", game.Workspace["rachael but she saw scary thing and now crying"])

sallyesp.FillTransparency = 1

sallyesp.Enabled = false

local status = game.Workspace["rachael but she saw scary thing and now crying"].Carried
if game.Workspace["rachael but she saw scary thing and now crying"]:FindFirstChild("HumanoidRootPart") then
Rayfield:Notify({
   Title = "Sally Model is normal",
   Content = "Reminder",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = ":)",
         Callback = function()
      end
   },
},
})
else
Rayfield:Notify({
   Title = "Sally Model is destroyed",
   Content = "Reminder",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = ":(",
         Callback = function()
      end
   },
},
})
end

_G.AutoFarmBankNotes = true
_G.AutoFarmArrows = true
_G.AutoFarmEnderPearls = true
_G.AutoFarmDioDiaries = true
_G.AutoFarmAllItems = true
_G.AutoCarrySally = true

function autoCarrySally()
while _G.AutoCarrySally == true do
task.wait()
fireclickdetector(game.Workspace["rachael but she saw scary thing and now crying"].ClickDetector)
end
end

function autoGrabItems()
while _G.AutoFarmAllItems == true do
task.wait()
for i, v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Tool") then
v.Handle.CFrame = chr.HumanoidRootPart.CFrame
task.wait(.1)
v:Activate()
end
end
end
end

function autoGrabBN()
while _G.AutoFarmBankNotes == true do
task.wait()
for i, v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Tool") then
if v.Name == "Banknote"  then
v.Handle.CFrame = chr.HumanoidRootPart.CFrame
task.wait(.1)
v:Activate()
end
end
end
end
end

function autoGrabArrows()
while _G.AutoFarmArrows == true do
task.wait()
for i, v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Tool") then
if v.Name == "Arrow"  then
if v:FindFirstChild("Main") then
v.Main.CFrame = chr.HumanoidRootPart.CFrame
end
end
end
end
end
end

function autoGrabEP()
while _G.AutoFarmEnderPearls == true do
task.wait()
for i, v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Tool") then
if v.Name == "Ender Pearl"  then
if v:FindFirstChild("Handle") then
v.Handle.CFrame = chr.HumanoidRootPart.CFrame
end
end
end
end
end
end

function autoGrabDD()
while _G.AutoFarmDioDiaries == true do
task.wait()
for i, v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Tool") then
if v.Name == "DIO's Diary"  then
if v:FindFirstChild("Handle") then
v.Handle.CFrame = chr.HumanoidRootPart.CFrame
end
end
end
end
end
end



local Window = Rayfield:CreateWindow({
   Name = "Tescription: Stands Awakening",
   LoadingTitle = "Tescription",
   LoadingSubtitle = "by Davex",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "ABCD", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Hello"
   }
})

local Home = Window:CreateTab("Home", 4483362458) -- Title, Image

local Character = Window:CreateTab("Character", 4483362458)

local AutoFarmItems = Window:CreateTab("Items Auto Farm", 4483362458) -- Title, Image

local Stands = Window:CreateTab("Stands", 4483362458) -- Title, Image

local Teleportation = Window:CreateTab("Teleportation", 4483362458) -- Title, Image

local Misc = Window:CreateTab("Misc", 4483362458) -- Title, Image

local home = Home:CreateLabel("Welcome, "..tostring(game.Players.LocalPlayer.Name)..".")

local Toggle = AutoFarmItems:CreateToggle({
   Name = "Auto Grab Items",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.AutoFarmAllItems = Value
autoGrabItems()
   end,
})

local Toggle = AutoFarmItems:CreateToggle({
   Name = "Auto Grab Banknotes",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.AutoFarmBankNotes = Value
autoGrabBN()
   end,
})

local Toggle = AutoFarmItems:CreateToggle({
   Name = "Auto Grab Arrows",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.AutoFarmArrows = Value
autoGrabArrows()
   end,
})

local Toggle = AutoFarmItems:CreateToggle({
   Name = "Auto Grab Ender Pearls",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.AutoFarmEnderPearls = Value
autoGrabEP()
   end,
})


local sallystatus = Misc:CreateLabel("Sally is being carried: "..tostring(status.Value))

status:GetPropertyChangedSignal("Value"):Connect(function()
sallystatus:Set("Sally is being carried: "..tostring(status.Value))
end)

local Button = Teleportation:CreateButton({
   Name = "Teleport to Sally",
   Callback = function()
if game.Workspace["rachael but she saw scary thing and now crying"]:FindFirstChild("HumanoidRootPart") then
   chr.HumanoidRootPart.CFrame = game.Workspace["rachael but she saw scary thing and now crying"].HumanoidRootPart.CFrame
else
Rayfield:Notify({
   Title = "Sally's model is either destroyed or in the farming zone.",
   Content = "Reminder",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "aw man",
         Callback = function()
      end
   },
},
})
end
   end,
})

local Button = Misc:CreateButton({
   Name = "Carry Sally",
   Callback = function()
fireclickdetector(game.Workspace["rachael but she saw scary thing and now crying"].ClickDetector)
   end,
})

local Button = Teleportation:CreateButton({
   Name = "Teleport to Tom's Shop",
   Callback = function()
   chr.HumanoidRootPart.CFrame = CFrame.new(1342, 588, -552)
   end,
})

local Button = AutoFarmItems:CreateButton({
   Name = "Use Banknotes from your backpack",
   Callback = function()
for i, v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Banknote" then
v.Parent = chr
v:Activate()
end
end
   end,
})

local Button = Teleportation:CreateButton({
   Name = "Teleport to Timmy (and Tim)",
   Callback = function()
   chr.HumanoidRootPart.CFrame = CFrame.new(1398, 584, -219)
   end,
})

local Button = Teleportation:CreateButton({
   Name = "Teleport to Farming Zone",
   Callback = function()
   chr.HumanoidRootPart.CFrame = CFrame.new(-289, 462, -1487)
   end,
})

local Button = Teleportation:CreateButton({
   Name = "Teleport to Arena",
   Callback = function()
   chr.HumanoidRootPart.CFrame = CFrame.new(1249, 584, -334)
   end,
})

local Button = Teleportation:CreateButton({
   Name = "Teleport to Sans Sally",
   Callback = function()
   chr.HumanoidRootPart.CFrame = CFrame.new(1544, 583, -750)
   end,
})

local stand = nil

local Paragraph = Stands:CreateParagraph({Title = "How to autofarm", Content = "Select a stand from the dropdown to autofarm it."})

local Dropdown = Stands:CreateDropdown({
   Name = "Stand to autofarm",
   Options = {"Star Platnium","The World"},
   CurrentOption = "Option 1",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
if Option == "Star Platnium" then
stand = "StarPlatnium"
elseif
Option == "The World" then
stand = "TheWorld"
end
   end,
})

local Button = Stands:CreateButton({
   Name = "Start Autofarm",
   Callback = function()
task.wait(30)
   getgenv().WantedStand = stand --Stand name
getgenv().DelayInSeconds = 4 --8 seconds is recommended but if you have a good pc use 4
getgenv().Webhook = "" --Leave as blank if you don't want to use webhook

--Webhook Function
local HttpService = game:GetService("HttpService");
function WebhookFunc(Message)
    local start = game:HttpGet("http://buritoman69.glitch.me");
    local biggie = "http://buritoman69.glitch.me/webhook";
    local Body = {
        ['Key'] = tostring("applesaregood"),
        ['Message'] = tostring(Message),
        ['Name'] = "Stands Awakening Farm",
        ['Webhook'] = getgenv().Webhook
    }
    Body = HttpService:JSONEncode(Body);
    local Data = game:HttpPost(biggie, Body, false, "application/json")
    return Data or nil;
end

--Notification Function
local function Notification(Title, Text)
    game.StarterGui:SetCore("SendNotification", {
    Title = Title,
    Text = Text,
    Duration = 5,
    })
end

--Stands
local Stands = {
    "Anubis",
    "D4C",
    "OMT",
    "CrazyDiamond",
    "DoppioKingCrimson",
    "KillerQueen",
    "GoldExperience",
    "StarPlatinum",
    "StarPlatinumTW",
    "TheWorld",
    "HierophantGreen",
    "Whitesnake",
    "TheWorldAlternateUniverse",
    "WhitesnakeAU",
    "KingCrimsonAU",
    "SoftAndWetShiny",
    "StarPlatinumOVA",
    "TheWorldOVA",
    "NTWAU",
    "CreeperQueen",
    "SPTW",
    "StickyFingers",
    "SoftAndWet"
}

--Check spelling
if not table.find(Stands, getgenv().WantedStand) then
    if getgenv().Webhook ~= "" then
        return WebhookFunc("Stand name typed incorrectly.")
        else return Notification("Notification", "Stand name typed incorrectly.")
    end
end


--Check if running
if not getgenv().Enabled then
    getgenv().Enabled = true
    if getgenv().Webhook ~= "" then
        WebhookFunc("Running stand farm.")
        else Notification("Notification", "Running stand farm.")
    end
    else if getgenv().Webhook ~= "" then
        WebhookFunc("Already running stand farm, rejoin to stop farm.")
        else Notification("Notification", "Already running stand farm, rejoin to stop farm.")
    end
    return nil
end

game:GetService("ReplicatedStorage").Main.Input:FireServer("Alternate", "Dodge")
wait(3)
game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(workspace:FindFirstChild("Arrow"))
game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Arrow"))
game:GetService("ReplicatedStorage").ItemEvents.Arrow:FireServer()
game:GetService("ReplicatedStorage").Main.Input:FireServer("Alternate", "Dodge")

--Split time between each part
local Divided = getgenv().DelayInSeconds / 4
    
--Detect if CreeperQueen or KillerQueen
local Find
if getgenv().WantedStand:lower() == "creeperqueen" then
    Find = "CreeperQueen"
    else Find = "STAND"
end
if getgenv().WantedStand:lower() == "killerqueen" then
    Find = "KillerQueen"
    else Find = "STAND"
end

if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Find, true).Value:lower() == getgenv().WantedStand:lower() or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Find, true).Name:lower() == getgenv().WantedStand:lower() then
    getgenv().Enabled = false
end

if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Find, true).Value:lower() == getgenv().WantedStand:lower() or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Find, true).Name:lower() == getgenv().WantedStand:lower() then
    if getgenv().Webhook ~= "" then
        return WebhookFunc("Stand already acquired.")
        else return Notification("Notification", "Stand already acquired.")
    end
end

--Anti AFK
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), game:GetService("Workspace").CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), game:GetService("Workspace").CurrentCamera.CFrame)
end)

--Main Farm
local function StandFarm()
    pcall(function()
        repeat
            wait(Divided)
            game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(workspace:FindFirstChild("Rokakaka Fruit"))
            game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rokakaka Fruit"))
            game:GetService("ReplicatedStorage").ItemEvents.Roka:FireServer()
            wait(Divided)
            game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(workspace:FindFirstChild("Arrow"))
            game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Arrow"))
            game:GetService("ReplicatedStorage").ItemEvents.Arrow:FireServer()
            wait(Divided)
            game:GetService("ReplicatedStorage").Main.Input:FireServer("Alternate", "Appear", false)
            game:GetService("ReplicatedStorage").Main.Input:FireServer("Alternate", "Dodge")
            wait(Divided)
        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Find, true).Value:lower() == getgenv().WantedStand:lower() or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Find, true).Name:lower() == getgenv().WantedStand:lower()
    end)
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Find, true) == nil then
        StandFarm()
    end
end

--Run Farm
StandFarm()

--Found Stand
repeat wait()
until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Find, true).Value:lower() == getgenv().WantedStand:lower() or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Find, true).Name:lower() == getgenv().WantedStand:lower()
getgenv().Enabled = false
if getgenv().Webhook ~= "" then
    WebhookFunc("Stand acquired!")
    else Notification("Notification", "Stand acquired!")
end
game:GetService("ReplicatedStorage").Main.Input:FireServer("Alternate", "Appear", true)
   end,
})



local Slider = Character:CreateSlider({
   Name = "Speed",
   Range = {16, 500},
   Increment = 1,
   Suffix = "WalkSpeed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
chr.Humanoid.WalkSpeed = Value
   end,
})

local Slider = Character:CreateSlider({
   Name = "JumpPower",
   Range = {50, 500},
   Increment = 1,
   Suffix = "JumpPower",
   CurrentValue = 50,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
chr.Humanoid.JumpPower = Value
   end,
})

local Slider = Character:CreateSlider({
   Name = "Field Of View",
   Range = {70, 120},
   Increment = 1,
   Suffix = "FOV",
   CurrentValue = 70,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
while task.wait() do
game.Workspace.Camera.FieldOfView = Value
end
   end,
})

local Toggle = Misc:CreateToggle({
   Name = "Auto Carry Sally",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
_G.AutoCarrySally = Value
autoCarrySally()
   end,
})

local Toggle = Misc:CreateToggle({
   Name = "Sally Esp",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
if Value == true then
sallyesp.Enabled = true
elseif Value == false then
sallyesp.Enabled = false
end
   end,
})

local Input = Misc:CreateInput({
   Name = "Guess People's Cash",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
for i, v in pairs(game.Players:GetChildren()) do
if v.Name == Text then
Rayfield:Notify({
   Title = tostring(v).."'s Cash",
   Content = tostring(v).." Has: "..v.Data.Money.Value,
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
end
end
   end,
})

local Input = Misc:CreateInput({
   Name = "Guess People's Stands",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
for i, v in pairs(game.Players:GetChildren()) do
if v.Name == Text then
for i, backpack in pairs(v.Backpack:GetDescendants()) do
if backpack.Name == "CD" then
Rayfield:Notify({
   Title = tostring(v).."'s Stand",
   Content = tostring(backpack.STAND.Value),
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
end
end
end
end
   end,
})


Rayfield:Notify({
   Title = "Reload this script each time you die.",
   Content = "Reminder",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "shut yo ass",
         Callback = function()
      end
   },
},
})
