-- Ссылка на Библиотеку
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
--[[ 
В данный момент стоит тема "RJTheme3" ,
вы можете использовать другую тему приведённую ниже -
"RJTheme1"
"RJTheme2"
"RJTheme3"
"RJTheme4"
"RJTheme5"
"RJTheme6"
"RJTheme7"
"RJTheme8"
//////////////////////////////////////////////////////////////////

Что бы сделать свою тему , уберите часть скрипта из "комминтариев" ,
который находится чуть ниже , и вместо "RJTheme3" в переменной "Windows" - 
напишите переменную которая используется в скрипте чуть ниже .
]]
--[[
local colors = {
    -- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(150, 72, 148),
    -- Цвет фона в правой части UI
    Background = Color3.fromRGB(15,15,15),
    -- Цвет фона в левой части UI
    Header = Color3.fromRGB(15,15,15),
    -- Цвет текста
    TextColor = Color3.fromRGB(255,255,255),
    -- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(20, 20, 20)
}
]]
-- Создать окно UI
local Window = Library.CreateLib("Name", "RJTheme3")

--Приветствие
local Tab = Window:NewTab("Privet/Hello")

-- Подсекция
local Section = Tab:NewSection("Eto moy hub script sozdatel: nitent9442 ky limon4ik!")

local Tab = Window:NewTab("Scripts")

-- Подсекция
local Section = Tab:NewSection("Game Scripts")

Section:NewButton("BABFT Auto Build", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/max2007killer/auto-build-not-limit/main/autobuild.txt"))()
end)

Section:NewButton("Slap Royale", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/Tx7XLqcm'),true))()
end)

Section:NewButton("Slap Royale [PUCK] [Vse Dla Popedi limon4ik)]", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/Tx7XLqcm'),true))()
    loadstring(game:HttpGet(('https://pastebin.com/raw/BSHwUSkP'),true))()
end)

Section:NewButton("CMD-X Admin", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/Tx7XLqcm'),true))()
end)

Section:NewButton("BABFT Events Summoner", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ExyXyz/ExyGantenk/main/ExyBABFT"))()
end)

--Приветствие
local Tab = Window:NewTab("Global")

-- Подсекция
local Section = Tab:NewSection("Global Settings")

Section:NewButton("CNTRL Click Tp", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/BSHwUSkP'),true))()
end)

Section:NewButton("ESP", "ButtonInfo", function()
    while wait(0.5) do
    for i, childrik in ipairs(workspace:GetDescendants()) do
        if childrik:FindFirstChild("Humanoid") then
            if not childrik:FindFirstChild("EspBox") then
                if childrik ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",childrik)
                    esp.Adornee = childrik
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 1)
                    esp.Transparency = 0.10
                    esp.Color3 = Color3.fromRGB(165,42,42)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
end)

-- Секция
local Tab = Window:NewTab("Player")

-- Подсекция
local Section = Tab:NewSection("Player Settings")

-- Заголовок
Section:NewLabel("Settings")

-- Кнопка

Section:NewButton("Reset All", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)


-- Переключатель
Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-- Слайдер
Section:NewSlider("Speed", "SliderInfo", 100, 16, function(ns) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ns
end)

Section:NewSlider("JumpPower", "SliderInfo", 500, 50, function(np) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = np
end)

Section:NewSlider("Gravity", "SliderInfo", 0, 1000, function(ng) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.workspace.Gravity = ng
end)

-- Текст Бокс
Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
    print(txt)
end)

-- Бинд на клавиши
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
    print("You just clicked the bind")
end)

-- Дропдаун
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)
