-- filename: 
-- version: lua51
-- line: [0, 0] id: 0
if game:GetService("CoreGui"):FindFirstChild("ToraScript") then
  game:GetService("CoreGui").ToraScript:Destroy()
end
local r0_0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/liebertsx/Tora-Library/main/src/librarynew", true))()
local r1_0 = r0_0:CreateWindow("Slasher Blade Loot")
r1_0:AddSlider({
  text = "Set Range",
  flag = "slider1",
  value = 5,
  min = 5,
  max = 300,
  callback = function(r0_15)
    -- line: [0, 0] id: 15
    aura = r0_15
  end,
})
r1_0:AddToggle({
  text = "Kill Aura",
  flag = "toggle",
  state = false,
  callback = function(r0_20)
    -- line: [0, 0] id: 20
    _G.Kill = r0_20
    print("Kill: ", r0_20)
    if r0_20 then
      Kill()
    end
  end,
})
function Kill()
  -- line: [0, 0] id: 11
  spawn(function()
    -- line: [0, 0] id: 12
    _G.Kill = true
    while _G.Kill do
      wait()
      pcall(function()
        -- line: [0, 0] id: 13
        local r0_13 = game.Players.LocalPlayer
        local r1_13 = r0_13.Character and r0_13.Character:FindFirstChild("HumanoidRootPart")
        if not r1_13 then
          return 
        end
        local r2_13 = 5
        local r3_13 = aura
        local r4_13 = {}
        for r8_13, r9_13 in pairs(workspace.Live.MobModel:GetDescendants()) do
          if r9_13.Name == "HumanoidRootPart" and r9_13.Parent:FindFirstChild("Humanoid") then
            local r10_13 = (r9_13.Position - r1_13.Position).Magnitude
            if r10_13 <= r3_13 then
              table.insert(r4_13, {
                part = r9_13,
                dist = r10_13,
              })
            end
          end
        end
        table.sort(r4_13, function(r0_14, r1_14)
          -- line: [0, 0] id: 14
          return r0_14.dist < r1_14.dist
        end)
        local r5_13 = {
          [1] = {},
        }
        for r9_13 = 1, math.min(#r4_13, r2_13), 1 do
          table.insert(r5_13[1], r4_13[r9_13].part.Parent.Name)
        end
        if #r5_13[1] > 0 then
          game:GetService("ReplicatedStorage").Remote.Event.Combat.M1:FireServer(unpack(r5_13))
        end
        wait(0.2)
      end)
    end
  end)
end
r1_0:AddToggle({
  text = "Collect Items",
  flag = "toggle",
  state = false,
  callback = function(r0_4)
    -- line: [0, 0] id: 4
    _G.Items = r0_4
    print("Items: ", r0_4)
    if r0_4 then
      Items()
    end
  end,
})
function Items()
  -- line: [0, 0] id: 7
  spawn(function()
    -- line: [0, 0] id: 8
    _G.Items = true
    while _G.Items do
      wait()
      pcall(function()
        -- line: [0, 0] id: 9
        for r3_9, r4_9 in pairs(workspace.Live.DropItem:GetDescendants()) do
          if r4_9:IsA("ProximityPrompt") and r4_9.Name == "PP" then
            r4_9.MaxActivationDistance = math.huge
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
          end
        end
        wait()
      end)
    end
  end)
end
r1_0:AddToggle({
  text = "Auto Stats",
  flag = "toggle",
  state = false,
  callback = function(r0_5)
    -- line: [0, 0] id: 5
    _G.Stats = r0_5
    print("Stats: ", r0_5)
    if r0_5 then
      Stats()
    end
  end,
})
function Stats()
  -- line: [0, 0] id: 17
  spawn(function()
    -- line: [0, 0] id: 18
    _G.Stats = true
    while _G.Stats do
      wait()
      pcall(function()
        -- line: [0, 0] id: 19
        local r0_19 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Upgrade.Main.Info
        for r5_19, r6_19 in pairs({
          r0_19.Button.Auto,
          r0_19.Info.Damage.Button,
          r0_19.Info.Defense.Button,
          r0_19.Info.Health.Button
        }) do
          for r10_19, r11_19 in pairs(getconnections(r6_19.MouseButton1Click)) do
            r11_19:Fire()
            wait(1)
          end
        end
        wait(5)
      end)
    end
  end)
end
r1_0:AddToggle({
  text = "Auto Rebirth",
  flag = "toggle",
  state = false,
  callback = function(r0_6)
    -- line: [0, 0] id: 6
    _G.Rebirth = r0_6
    print("Rebirth: ", r0_6)
    if r0_6 then
      Rebirth()
    end
  end,
})
function Rebirth()
  -- line: [0, 0] id: 1
  spawn(function()
    -- line: [0, 0] id: 2
    _G.Rebirth = true
    while _G.Rebirth do
      wait()
      pcall(function()
        -- line: [0, 0] id: 3
        if game:GetService("Players").LocalPlayer.PlayerGui.Hud.Left.Button.RightButtons.Rebirth.Button.Progress.Bg.Percent.Text == "100%" then
          game:GetService("ReplicatedStorage").Remote.Event.Rebirth:FindFirstChild("[C-S]TryRebirth"):FireServer()
        end
        wait(5)
      end)
    end
  end)
end
local r3_0 = game:GetService("Players").LocalPlayer
local r4_0 = 27
r1_0:AddSlider({
  text = "Walk Speed",
  flag = "slider1",
  value = 27,
  min = 27,
  max = 200,
  callback = function(r0_10)
    -- line: [0, 0] id: 10
    r4_0 = r0_10
    if r3_0.Character and r3_0.Character:FindFirstChild("Humanoid") then
      r3_0.Character.Humanoid.WalkSpeed = r0_10
    end
  end,
})
task.spawn(function()
  -- line: [0, 0] id: 16
  while task.wait(0.1) do
    local r0_16 = r3_0.Character
    if r0_16 then
      r0_16 = r3_0.Character:FindFirstChild("Humanoid")
      if r0_16 then
        r0_16 = r3_0.Character.Humanoid.WalkSpeed
        if r0_16 ~= r4_0 then
          r0_16 = r3_0.Character.Humanoid
          r0_16.WalkSpeed = r4_0
        end
      end
    end
  end
end)
r1_0:AddLabel({
  text = "YouTube: Tora IsMe",
})
r0_0:Init()
