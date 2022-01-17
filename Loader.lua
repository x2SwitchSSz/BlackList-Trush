-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))()
local venyx = library.new("So_SaDZ HUB  |  BloxFruit  Versoins : TEST", 5013109572)

-- themes
local themes = {
TextColor = Color3.fromRGB(255, 0, 0),
}


local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Main")


section1:addToggle("Fast Attack", _G.FastAttack, function(value)
_G.FastAttack = value
spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
        local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
        Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
        Combat.activeController.timeToNextAttack = 0
    end)
end) 
end)


spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end)
end) 
end)
end)
 
 


--player page
local page = venyx:addPage("Players", 5012544693)
local section1 = page:addSection("Player")

--------------------
 
players = {}
 
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
 
section1:addDropdown("Select Player", players, function(abc)
    Select = abc
end)
 
 
section1:addButton("Refresh", function()
    table.clear(players)
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
end)
 
section1:addButton("Teleport", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame
end)




-- first page
local page = venyx:addPage("More Ui", 5012544693)
local section1 = page:addSection("UI")


section1:addButton("POWER X HUB [best for farm]", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/MASTERHUB2/P-O-W-E-R-X/main/README.md"), true))()
end)


section1:addButton("Stirke HUB", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/StormSKz12/StirkeHub1/main/Gameincluded"))()
end)



section1:addButton("Hyper X HUB", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Shisobad/new/main/script.lua"))()
end)



section1:addButton("AltsegoD HUB", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/AltsegoD/script/master/BloxFruit.lua")))()
end)



section1:addButton("xDepressionx HUB", function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/BloxFruit.lua")()
end)


local page = venyx:addPage("Misc", 5012544693)
local section1 = page:addSection("Main")

section1:addButton("Rejoin",  function()
    game:GetService("TeleportService"):Teleport(2753915549)
end)

--XD
local page = venyx:addPage("Setting", 5012544693)
local section1 = page:addSection("Toggle Keybind ui")

section1:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end


local page = venyx:addPage("Credit", 5012544693)
local section1 = page:addSection("Credit")


section1:addButton("Credit Script By x_2Switchz",  function()
setclipboard("Credit Script By x_2Switchz")
end)

section1:addButton("Copy Link Discord",  function()
setclipboard("https://discord.gg/ZSuaNhVYfe")
end)

section1:addButton("Discord Owner script",  function()
setclipboard("x_2Switchz#9845")
end)




-- load
venyx:SelectPage(venyx.pages[0], true)


 
 
spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.FastAttack then
            local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
            local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
            Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
            Combat.activeController.timeToNextAttack = 0
            Combat.activeController.hitboxMagnitude = 120
            Combat.activeController.increment = 3
        end
    end)
end) 
end)
