local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("I AM THE STORM THAT IS APPROACHING", "Midnight")
local Tab = Window:NewTab("Auto Something")
local Section = Tab:NewSection("You shall die.")
Section:NewToggle("Auto Reset", "Instant Reset", function(state)
_G.Autoreset = state
while _G.Autoreset do
wait(0.15)
game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end
end)

Section:NewToggle("I still got it.", "Anti AFK", function(state)
wait(3)
local VirtualUser=game:service'VirtualUser'
game:service('Players').LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
end)

Section:NewKeybind("Close UI", "NO UI", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

local Tab = Window:NewTab("Credit")
local Section = Tab:NewSection("Ice-Polkit#0819")
Section:NewLabel("You Know i Know Who You are")

Section:NewDropdown("่Don't Click If u not Pro", "DropdownInf", {" RequestAnyFunc.", "AT MY DISCORD DM", "I Will Never Do it fou u"}, function(currentOption)
    print(currentOption)
end)
