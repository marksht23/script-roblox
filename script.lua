local success, Rayfield = pcall(function()
    return loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
end)

if not success then
    warn("Failed to load script")
    return
end

local Window = Rayfield:CreateWindow({
   Name = "My script",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by Mark",
   ShowText = "Rayfield", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Markscript_Config"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})

local TabWater = Window:CreateTab("WaterMark", 4483362458)

TabWater:CreateLabel("© Mark")
TabWater:CreateLabel("My GitHub: https://github.com/marksht23")
TabWater:CreateLabel("My Repository: https://github.com/marksht23/script-roblox")
TabWater:CreateLabel("Unauthorized redistribution prohibited")

local Tab1 = Window:CreateTab("scriptes", 4483362458) -- Title, Image

local Button = Tab1:CreateButton({
   Name = "script Coolkidd",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/cfsmi2/c00lguiv1/refs/heads/main/Main.lua", true)
   end,
})

local Button = Tab1:CreateButton({
   Name = "Escape Tsunami For Brainrots",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/marksht23/My-script-roblox/refs/heads/main/Escape%20Tsunami%20For%20Brainrots?token=GHSAT0AAAAAADW4UEXYJEY6AOG7AISHJICQ2NILZQQ"))()
   end,
})

local Button = Tab1:CreateButton({
   Name = "Survive LAVA for Brainrots",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/marksht23/My-script-roblox/refs/heads/main/Survive%20LAVA%20for%20Brainrots?token=GHSAT0AAAAAADW4UEXZ5OD44KBEZANR4BHY2NILZRQ"))()
   end,
})
