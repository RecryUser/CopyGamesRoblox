local VersionOfScript = "1.0"
local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
local Window = ArrayField:CreateWindow({
   Name = "Copy Game Script | Version: "..VersionOfScript,
   LoadingTitle = "Loading, please wait!",
   LoadingSubtitle = "by Recry",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "ArrayField"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Copy Game Script",
      Subtitle = "Key System",
      Note = "Get link in pastebin",
      FileName = "copygamelolololol", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'link : https://pastebin.com/tgVdWs9h',
                OnPress = function()
                    
                end,
                }
            },
      Key = {"copy-game-sys"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
Window:Prompt({
    Title = 'Credits',
    SubTitle = 'by Recry',
    Content = 'Created for copy game!',
    Actions = {
        Accept = {
            Name = 'okay, bro',
            Callback = function()
                print('Pressed')
            end,
        }
    }
})
_G.Decompile = false;
_G.ID = "copied_game_lol";
function save()
	saveinstance(game, `{_G.ID}.rbxl`, {
		Decompile = _G.Decompile,
		DecompileTimeout = 10,
		DecompileIgnore = { "Chat", "CoreGui", "CorePackages" },
		NilInstances = false,
		RemovePlayerCharacters = true,
		SavePlayers = false,
		MaxThreads = 3,
		ShowStatus = true,
		IgnoreDefaultProps = true,
		IsolateStarterPlayer = true
	})
end

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Label = Tab:CreateLabel("Settings")
local Toggle1 = Tab:CreateToggle({
   Name = "Decompile Scripts",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   _G.Decompile = Value
   end,
})
local Input = Tab:CreateInput({
   Name = "File Name",
   PlaceholderText = "Name",
   NumbersOnly = false, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = 30, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   _G.ID = Text
   print(_G.ID)
   end,
})
local Label2 = Tab:CreateLabel("Main")
local Button = Tab:CreateButton({
   Name = "Save",
   Interact = 'Click',
   Callback = function()
  save()
   end,
})
