if _G.__SCRIPT_LOADED then
    warn("[Script] Already loaded")
    return
end
_G.__SCRIPT_LOADED = true

local function DecodeKey(encoded)
    local result = ""
    for num in encoded:gmatch("%d+") do
        result = result .. string.char(tonumber(num))
    end
    return result
end

local ENCRYPTED_KEY = "//83//99//114//105//112//116//75//69//89//49//50//51//"

local function SafeLoad(url)
    if type(url) ~= "string" then
        warn("[SafeLoad] URL must be string")
        return nil
    end

    local ok, res = pcall(function()
        local source = game:HttpGet(url)
        local fn = loadstring(source)
        return fn()
    end)

    if not ok then
        warn("[SafeLoad] Failed to load:")
        warn(url)
        warn(res)
        return nil
    end

    return res
end

local Rayfield = SafeLoad("https://sirius.menu/rayfield")
if not Rayfield then
    warn("[Script] Rayfield load failed")
    return
end

local Window = Rayfield:CreateWindow({
    Name = "Script Hub",
    Icon = 0,
    LoadingTitle = "Loading...",
    LoadingSubtitle = "by Mark",
    ShowText = "Rayfield",
    Theme = "Default",

    ToggleUIKeybind = "K",

    ConfigurationSaving = {
        Enabled = true,
        FolderName = "Script",
        FileName = "Config"
    },

    KeySystem = true,
    KeySettings = {
        Title = "Script Hub",
        Subtitle = "Key System",
        Note = "Enter key to continue",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,

        Key = {
            DecodeKey(ENCRYPTED_KEY)
        }
    }
})

local TabWater = Window:CreateTab("WaterMark", 4483362458)

TabWater:CreateLabel("© Mark")
TabWater:CreateLabel("My GitHub: https://github.com/marksht23")
TabWater:CreateLabel("My Repository: https://github.com/marksht23/script-roblox")
TabWater:CreateLabel("Unauthorized redistribution prohibited")

local TabScripts = Window:CreateTab("Scripts", 4483362458)

TabScripts:CreateButton({
    Name = "Coolkidd Script",
    Callback = function()
        SafeLoad("https://raw.githubusercontent.com/cfsmi2/c00lguiv1/main/Main.lua")
    end
})

TabScripts:CreateButton({
    Name = "Escape Tsunami For Brainrots",
    Callback = function()
        SafeLoad("https://raw.githubusercontent.com/marksht23/My-script-roblox/main/Escape_Tsunami.lua")
    end
})

TabScripts:CreateButton({
    Name = "Survive LAVA For Brainrots",
    Callback = function()
        SafeLoad("https://raw.githubusercontent.com/marksht23/My-script-roblox/main/Survive_LAVA.lua")
    end
})
