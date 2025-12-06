-- filename: 
-- version: lua51
-- line: [0, 0] id: 0
local r0_0 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
workspace.FallenPartsDestroyHeight = -math.huge
local r1_0 = r0_0:CreateWindow({
  Title = "Soluna " .. r0_0.Version,
  SubTitle = "for Brookhaven RP",
  TabWidth = 160,
  Size = UDim2.fromOffset(600, 520),
  Acrylic = true,
  Theme = "Dark",
  MinimizeKey = Enum.KeyCode.RightControl,
})
local r2_0 = r0_0.Options
local r3_0 = {}
r3_0.Info = r1_0:AddTab({
  Title = "Info",
  Icon = "info",
})
r3_0.TrollScripts = r1_0:AddTab({
  Title = "Troll Scripts",
  Icon = "skull",
})
r3_0.PlayerTrolls = r1_0:AddTab({
  Title = "Player Trolls",
  Icon = "user-x",
})
r3_0.Avatar = r1_0:AddTab({
  Title = "Avatar",
  Icon = "user-cog",
})
r3_0.Houses = r1_0:AddTab({
  Title = "Houses",
  Icon = "home",
})
r3_0.Audio = r1_0:AddTab({
  Title = "Audio",
  Icon = "music",
})
r3_0.Server = r1_0:AddTab({
  Title = "Server",
  Icon = "server-crash",
})
r3_0.Names = r1_0:AddTab({
  Title = "Names",
  Icon = "file-badge",
})
r3_0.Vehicle = r1_0:AddTab({
  Title = "Vehicle",
  Icon = "car",
})
r3_0.Child = r1_0:AddTab({
  Title = "Child",
  Icon = "baby",
})
r3_0.LocalPlayer = r1_0:AddTab({
  Title = "Local Player",
  Icon = "user",
})
r3_0.Teleports = r1_0:AddTab({
  Title = "Teleports",
  Icon = "send",
})
r3_0.Universal = r1_0:AddTab({
  Title = "Universal",
  Icon = "globe",
})
local r4_0 = r3_0.Info
r4_0:AddSection("Script Information")
r4_0:AddParagraph({
  Title = "Developer Team",
  Content = "Soluna Development Team",
})
r4_0:AddParagraph({
  Title = "Original Owner",
  Content = "@keepmesmerizing on Discord",
})
r4_0:AddParagraph({
  Title = "You are using",
  Content = "Soluna for Brookhaven",
})
local r7_0 = {
  Title = "Your Executor",
}
local r8_0 = identifyexecutor
if r8_0 then
  r8_0 = identifyexecutor() or "Unknown"
else
  goto label_142	-- block#2 is visited secondly
end
r7_0.Content = r8_0
r4_0:AddParagraph(r7_0)
r4_0:AddSection("Server Actions")
r4_0:AddButton({
  Title = "Rejoin Server",
  Description = "Teleports you to a new instance of the same server.",
  Callback = function()
    -- line: [0, 0] id: 92
    local r0_92 = game:GetService("TeleportService")
    pcall(function()
      -- line: [0, 0] id: 93
      r0_92:TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end)
  end,
})
r4_0 = r3_0.TrollScripts
r4_0:AddSection("Invisibility")
r4_0:AddButton({
  Title = "Become Invisible (FE)",
  Callback = function()
    -- line: [0, 0] id: 56
    pcall(function()
      -- line: [0, 0] id: 57
      local r0_57 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes")
      r0_57.ChangeCharacterBody:InvokeServer({
        [1] = 102344834840946,
        [2] = 70400527171038,
        [3] = 0,
        [4] = 0,
        [5] = 0,
        [6] = 0,
      })
      r0_57.Wear:InvokeServer(111858803548721)
      local r1_57 = game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription
      for r6_57, r7_57 in ipairs({
        r1_57.BackAccessory,
        r1_57.FaceAccessory,
        r1_57.FrontAccessory,
        r1_57.NeckAccessory,
        r1_57.HatAccessory,
        r1_57.HairAccessory,
        r1_57.ShouldersAccessory,
        r1_57.WaistAccessory,
        r1_57.GraphicTShirt
      }) do
        local r8_57 = string.gmatch
        local r9_57 = r7_57
        local r10_57 = "%d+"
        for r11_57 in r8_57(r9_57, r10_57) do
          task.spawn(function()
            -- line: [0, 0] id: 58
            r0_57.Wear:InvokeServer(tonumber(r11_57))
          end)
          -- close: r11_57
        end
      end
    end)
  end,
})
r4_0:AddSection("RGB Effects")
r4_0:AddToggle("RGBCharacter", {
  Title = "RGB Character",
  Default = false,
  Callback = function(r0_34)
    -- line: [0, 0] id: 34
    getgenv().rgbCharacterEnabled = r0_34
    if r0_34 then
      task.spawn(function()
        -- line: [0, 0] id: 35
        local r0_35 = {
          "Bright red",
          "Lime green",
          "Bright blue",
          "Bright yellow",
          "Bright cyan",
          "Hot pink",
          "Royal purple"
        }
        while getgenv().rgbCharacterEnabled do
          local r1_35 = ipairs
          local r2_35 = r0_35
          for r4_35, r5_35 in r1_35(r2_35) do
            local r6_35 = getgenv().rgbCharacterEnabled
            if not r6_35 then
              return 
            end
            pcall(function()
              -- line: [0, 0] id: 36
              game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeBodyColor"):FireServer(r5_35)
            end)
            task.wait(0.5)
            -- close: r4_35
          end
        end
      end)
    end
  end,
})
r4_0:AddToggle("RGBHair", {
  Title = "RGB Hair",
  Default = false,
  Callback = function(r0_31)
    -- line: [0, 0] id: 31
    getgenv().rgbHairEnabled = r0_31
    if r0_31 then
      task.spawn(function()
        -- line: [0, 0] id: 32
        local r0_32 = {
          Color3.new(1, 0, 0),
          Color3.new(0, 1, 0),
          Color3.new(0, 0, 1),
          Color3.new(1, 1, 0),
          Color3.new(0, 1, 1),
          Color3.new(1, 0, 1)
        }
        local r1_32 = 1
        while getgenv().rgbHairEnabled do
          pcall(function()
            -- line: [0, 0] id: 33
            game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Max1y"):FireServer("ChangeHairColor2", r0_32[r1_32])
          end)
          task.wait(0.5)
          local r2_32 = r1_32 % #r0_32
          r1_32 = r2_32 + 1
        end
      end)
    end
  end,
})
r4_0:AddSection("Movement Mods")
r4_0:AddToggle("AntiSit", {
  Title = "Anti-Sit",
  Default = false,
  Callback = function(r0_11)
    -- line: [0, 0] id: 11
    getgenv().antiSitEnabled = r0_11
    if not getgenv().antiSitConnection then
      local function r1_11(r0_12)
        -- line: [0, 0] id: 12
        local r1_12 = r0_12:WaitForChild("Humanoid")
        if getgenv().antiSitEnabled then
          r1_12:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        end
        getgenv().antiSitConnection = r1_12.StateChanged:Connect(function(r0_13, r1_13)
          -- line: [0, 0] id: 13
          if getgenv().antiSitEnabled and r1_13 == Enum.HumanoidStateType.Seated then
            r1_12:ChangeState(Enum.HumanoidStateType.GettingUp)
          end
        end)
      end
      game.Players.LocalPlayer.CharacterAdded:Connect(r1_11)
      if game.Players.LocalPlayer.Character then
        r1_11(game.Players.LocalPlayer.Character)
      end
    end
    local r1_11 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if r1_11 then
      r1_11:SetStateEnabled(Enum.HumanoidStateType.Seated, not r0_11)
    end
  end,
})
r4_0 = r3_0.PlayerTrolls
local r5_0 = game:GetService("Players")
local r6_0 = game:GetService("Players").LocalPlayer
r7_0 = nil
r8_0 = "Bus Kill"
local function r9_0()
  -- line: [0, 0] id: 47
  local r0_47 = {}
  for r4_47, r5_47 in ipairs(r5_0:GetPlayers()) do
    if r5_47 ~= r6_0 then
      table.insert(r0_47, r5_47.Name)
    end
  end
  return r0_47
end
r4_0:AddSection("Target Selection")
local r10_0 = r4_0:AddDropdown("TrollTargetDropdown", {
  Title = "Select Player",
  Values = r9_0(),
  Default = "None",
})
r10_0:OnChanged(function(r0_83)
  -- line: [0, 0] id: 83
  getgenv().Target = r0_83
  r7_0 = r0_83
  r0_0:Notify({
    Title = "Target Set",
    Content = "Selected: " .. tostring(r0_83),
  })
end)
r4_0:AddButton({
  Title = "Refresh Player List",
  Callback = function()
    -- line: [0, 0] id: 85
    r10_0:SetValues(r9_0())
    r0_0:Notify({
      Title = "Success",
      Content = "Player list refreshed.",
    })
  end,
})
r4_0:AddButton({
  Title = "Teleport to Player",
  Callback = function()
    -- line: [0, 0] id: 81
    if not r7_0 or not r5_0:FindFirstChild(r7_0) then
      r0_0:Notify({
        Title = "Error",
        Content = "Player not selected.",
      })
      return 
    end
    local r0_81 = r6_0.Character
    local r1_81 = r5_0:FindFirstChild(r7_0).Character
    if r0_81 and r1_81 and r1_81:FindFirstChild("HumanoidRootPart") then
      r0_81.HumanoidRootPart.CFrame = r1_81.HumanoidRootPart.CFrame
    end
  end,
})
r4_0:AddToggle("SpectatePlayerToggle", {
  Title = "Spectate Player",
  Default = false,
  Callback = function(r0_7)
    -- line: [0, 0] id: 7
    local r1_7 = workspace.CurrentCamera
    if r0_7 then
      if not getgenv().SpectateConnection then
        getgenv().SpectateConnection = game:GetService("RunService").RenderStepped:Connect(function()
          -- line: [0, 0] id: 8
          local r0_8 = r5_0:FindFirstChild(r7_0)
          if r0_8 and r0_8.Character and r0_8.Character:FindFirstChildOfClass("Humanoid") then
            r1_7.CameraSubject = r0_8.Character.Humanoid
          else
            r2_0.SpectatePlayerToggle:SetValue(false)
          end
        end)
      end
    else
      if getgenv().SpectateConnection then
        getgenv().SpectateConnection:Disconnect()
        getgenv().SpectateConnection = nil
      end
      r1_7.CameraSubject = r6_0.Character and r6_0.Character:FindFirstChildOfClass("Humanoid")
    end
  end,
})
r4_0:AddSection("Troll Methods")
local r13_0 = "TrollMethodDropdown"
local r14_0 = {
  Title = "Select Method",
}
r14_0.Values = {
  "Bus Kill",
  "Couch Kill",
  "Couch Bring",
  "Fling Ball"
}
r14_0.Default = "Bus Kill"
r4_0:AddDropdown(r13_0, r14_0):OnChanged(function(r0_67)
  -- line: [0, 0] id: 67
  r8_0 = r0_67
end)
r4_0:AddButton({
  Title = "Execute Troll",
  Callback = function()
    -- line: [0, 0] id: 86
    if not r7_0 or not r5_0:FindFirstChild(r7_0) then
      r0_0:Notify({
        Title = "Error",
        Content = "Player not selected.",
      })
      return 
    end
    local r0_86 = r5_0:FindFirstChild(r7_0)
    if not r0_86 or not r0_86.Character or not r0_86.Character:FindFirstChild("HumanoidRootPart") then
      r0_0:Notify({
        Title = "Error",
        Content = "Target has no character.",
      })
      return 
    end
    local r1_86 = r6_0.Character
    local r2_86 = r6_0.Character and r6_0.Character:FindFirstChild("HumanoidRootPart")
    if not r2_86 then
      return 
    end
    local r3_86 = r2_86.CFrame
    local r4_86 = game:GetService("ReplicatedStorage")
    if r8_0 == "Bus Kill" then
      local function r5_86()
        -- line: [0, 0] id: 87
        return workspace.Vehicles and workspace.Vehicles:FindFirstChild(r6_0.Name .. "Car")
      end
      local r6_86 = r5_86()
      if not r6_86 then
        r2_86.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
        task.wait(0.5)
        r4_86.RE["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
        task.wait(1)
        r6_86 = r5_86()
      end
      if not r6_86 then
        r0_0:Notify({
          Title = "Error",
          Content = "Could not spawn bus.",
        })
        return 
      end
      local r7_86 = r6_86.Body:FindFirstChild("VehicleSeat")
      if r7_86 and r1_86.Humanoid and not r1_86.Humanoid.Sit then
        while true do
          task.wait()
          r2_86.CFrame = r7_86.CFrame * CFrame.new(0, 2, 0)
          if not r1_86.Humanoid.Sit then
            local r8_86 = r6_86.Parent
            if not r8_86 then
              break
            end
          else
            break
          end
        end
      end
      task.spawn(function()
        -- line: [0, 0] id: 88
        local r0_88 = true
        while r0_88 and r0_86 and r0_86.Parent do
          local r1_88 = r0_86.Character and r0_86.Character:FindFirstChild("HumanoidRootPart")
          local r2_88 = r0_86.Character and r0_86.Character:FindFirstChildOfClass("Humanoid")
          if not r1_88 or not r2_88 then
            r0_88 = false
            break
          else
            if r2_88.Sit then
              r6_86:SetPrimaryPartCFrame(CFrame.new(9999, -450, 9999))
              task.wait(0.5)
              r1_86.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
              task.wait(0.5)
              r2_86.CFrame = r3_86
              r0_88 = false
            else
              local r3_88 = tick() * 35
              r6_86:SetPrimaryPartCFrame(r1_88.CFrame * CFrame.new(math.sin(r3_88) * 4, 0, math.cos(r3_88) * 20))
            end
            game:GetService("RunService").RenderStepped:Wait()
          end
        end
      end)
      -- close: r5_86
    elseif r8_0 == "Couch Kill" or r8_0 == "Couch Bring" then
      r4_86.RE["1Clea1rTool1s"]:FireServer("ClearAllTools")
      task.wait(0.2)
      r4_86.RE["1Too1l"]:InvokeServer("PickingTools", "Couch")
      task.wait(0.3)
      local r5_86 = r6_0.Backpack:FindFirstChild("Couch")
      if r5_86 then
        r5_86.Parent = r1_86
      end
      task.wait(0.1)
      local r6_86 = r0_86.Character.HumanoidRootPart
      local r7_86 = Instance.new("BodyPosition", r6_86)
      local r8_86 = Vector3.new(math.huge, math.huge, math.huge)
      r7_86.P = 30000
      r7_86.MaxForce = r8_86
      task.spawn(function()
        -- line: [0, 0] id: 89
        local r0_89 = 0
        local r1_89 = true
        while r1_89 and r0_86.Parent do
          local r2_89 = r0_86.Character and r0_86.Character:FindFirstChildOfClass("Humanoid")
          if not r2_89 or r2_89.Sit then
            r1_89 = false
            break
          else
            r0_89 = r0_89 + 50
            r2_86.CFrame = CFrame.new((r6_86.Position + Vector3.new(0, 2, 0))) * CFrame.Angles(math.rad(r0_89), 0, 0)
            r7_86.Position = r2_86.Position + Vector3.new(2, 0, 0)
            task.wait()
          end
        end
        r7_86:Destroy()
        if r8_0 == "Couch Kill" then
          r2_86.CFrame = CFrame.new(145.51, -350.09, 21.58)
        else
          r2_86.CFrame = r3_86
        end
        task.wait(0.3)
        if r1_86:FindFirstChild("Couch") then
          r1_86.Couch.Parent = r6_0.Backpack
        end
        r4_86.RE["1Too1l"]:InvokeServer("PickingTools", "Couch")
        task.wait(0.2)
        r2_86.CFrame = r3_86
      end)
      -- close: r5_86
    elseif r8_0 == "Fling Ball" then
      local r5_86 = workspace.WorkspaceCom["001_SoccerBalls"]:FindFirstChild("Soccer" .. r6_0.Name) or (function()
        -- line: [0, 0] id: 90
        if not r6_0.Backpack:FindFirstChild("SoccerBall") then
          r4_86.RE["1Too1l"]:InvokeServer("PickingTools", "SoccerBall")
        end
        repeat
          task.wait()
        until r6_0.Backpack:FindFirstChild("SoccerBall")
        r6_0.Backpack.SoccerBall.Parent = r1_86
        repeat
          task.wait()
        until workspace.WorkspaceCom["001_SoccerBalls"]:FindFirstChild("Soccer" .. r6_0.Name)
        r1_86.SoccerBall.Parent = r6_0.Backpack
        return workspace.WorkspaceCom["001_SoccerBalls"]:FindFirstChild("Soccer" .. r6_0.Name)
      end)()
      r5_86.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)
      r5_86.Massless = true
      r5_86.CanCollide = false
      local r6_86 = r0_86.Character
      local r7_86 = r0_86.Character.HumanoidRootPart
      local r8_86 = r0_86.Character.Humanoid
      if r5_86:FindFirstChildWhichIsA("BodyVelocity") then
        r5_86:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
      end
      local r9_86 = Instance.new("BodyVelocity", r5_86)
      local r10_86 = Vector3.new(900000000, 900000000, 900000000)
      local r11_86 = Vector3.new(math.huge, math.huge, math.huge)
      r9_86.P = 9000000000
      r9_86.MaxForce = r11_86
      r9_86.Velocity = r10_86
      workspace.CurrentCamera.CameraSubject = r8_86
      while true do
        if r7_86.Velocity.Magnitude > 0 then
          r5_86.CFrame = CFrame.new(r7_86.Position + r7_86.Velocity / 1.5)
          r11_86 = Vector3.new(45, 60, 30)
          r10_86 = r5_86.Orientation + r11_86
          r5_86.Orientation = r10_86
        else
          r10_86 = pairs
          for r13_86, r14_86 in r10_86(r6_86:GetChildren()) do
            if r14_86:IsA("BasePart") and r14_86.CanCollide and not r14_86.Anchored then
              r5_86.CFrame = r14_86.CFrame
              task.wait(0.00016666666666666666)
            end
          end
        end
        task.wait(0.00016666666666666666)
        r10_86 = r7_86.Velocity.Magnitude
        if r10_86 <= 1000 then
          r10_86 = r8_86.Health
          if r10_86 > 0 then
            r10_86 = r6_86.Parent
            if not r10_86 then
              break
            end
          else
            break
          end
        else
          break
        end
      end
      workspace.CurrentCamera.CameraSubject = r1_86.Humanoid
    else
      r0_0:Notify({
        Title = "WIP",
        Content = "This method is in development.",
      })
    end
  end,
})
-- close: r4_0
r4_0 = r3_0.Avatar
r5_0 = game
r7_0 = "Players"
r5_0 = r5_0:GetService(r7_0)
r6_0 = game
r8_0 = "ReplicatedStorage"
r6_0 = r6_0:GetService(r8_0)
r7_0 = game
r9_0 = "ReplicatedStorage"
r7_0 = r7_0:GetService(r9_0)
r9_0 = "Remotes"
r7_0 = r7_0:WaitForChild(r9_0)
r8_0 = nil
function r9_0()
  -- line: [0, 0] id: 16
  local r0_16 = {}
  for r4_16, r5_16 in ipairs(r5_0:GetPlayers()) do
    table.insert(r0_16, r5_16.Name)
  end
  return r0_16
end
r10_0 = r4_0:AddDropdown("AvatarCopyDropdown", {
  Title = "Select Player",
  Values = r9_0(),
})
r10_0:OnChanged(function(r0_74)
  -- line: [0, 0] id: 74
  r8_0 = r0_74
end)
r4_0:AddButton({
  Title = "Refresh Player List",
  Callback = function()
    -- line: [0, 0] id: 91
    r10_0:SetValues(r9_0())
  end,
})
r4_0:AddButton({
  Title = "Copy Avatar",
  Callback = function()
    -- line: [0, 0] id: 25
    if not r8_0 then
      return 
    end
    local r0_25 = r5_0.LocalPlayer
    local r1_25 = r5_0.LocalPlayer.Character
    local r2_25 = r5_0:FindFirstChild(r8_0)
    if r2_25 and r2_25.Character then
      local r3_25 = r1_25 and r1_25:FindFirstChildOfClass("Humanoid")
      local r4_25 = r2_25.Character:FindFirstChildOfClass("Humanoid")
      if r3_25 and r4_25 then
        local r5_25 = r3_25:GetAppliedDescription()
        local r6_25 = r4_25:GetAppliedDescription()
        for r10_25, r11_25 in ipairs(r5_25:GetAccessories(true)) do
          if tonumber(r11_25.AssetId) then
            r7_0.Wear:InvokeServer(tonumber(r11_25.AssetId))
            task.wait(0.2)
          end
        end
        if tonumber(r5_25.Shirt) then
          r7_0.Wear:InvokeServer(tonumber(r5_25.Shirt))
          task.wait(0.2)
        end
        if tonumber(r5_25.Pants) then
          r7_0.Wear:InvokeServer(tonumber(r5_25.Pants))
          task.wait(0.2)
        end
        if tonumber(r5_25.Face) then
          r7_0.Wear:InvokeServer(tonumber(r5_25.Face))
          task.wait(0.2)
        end
        r7_0.ChangeCharacterBody:InvokeServer({
          [1] = r6_25.Torso,
          [2] = r6_25.RightArm,
          [3] = r6_25.LeftArm,
          [4] = r6_25.RightLeg,
          [5] = r6_25.LeftLeg,
          [6] = r6_25.Head,
        })
        task.wait(0.5)
        if tonumber(r6_25.Shirt) then
          r7_0.Wear:InvokeServer(tonumber(r6_25.Shirt))
          task.wait(0.3)
        end
        if tonumber(r6_25.Pants) then
          r7_0.Wear:InvokeServer(tonumber(r6_25.Pants))
          task.wait(0.3)
        end
        if tonumber(r6_25.Face) then
          r7_0.Wear:InvokeServer(tonumber(r6_25.Face))
          task.wait(0.3)
        end
        for r10_25, r11_25 in ipairs(r6_25:GetAccessories(true)) do
          if tonumber(r11_25.AssetId) then
            r7_0.Wear:InvokeServer(tonumber(r11_25.AssetId))
            task.wait(0.3)
          end
        end
        local r7_25 = r2_25.Character:FindFirstChild("Body Colors")
        if r7_25 then
          r7_0.ChangeBodyColor:FireServer(tostring(r7_25.HeadColor))
          task.wait(0.3)
        end
        if tonumber(r6_25.IdleAnimation) then
          r7_0.Wear:InvokeServer(tonumber(r6_25.IdleAnimation))
          task.wait(0.3)
        end
        local r8_25 = r2_25:FindFirstChild("PlayersBag")
        if r8_25 then
          if r8_25:FindFirstChild("RPName") then
            r7_0.RPNameText:FireServer("RolePlayName", r8_25.RPName.Value)
          end
          if r8_25:FindFirstChild("RPBio") then
            r7_0.RPNameText:FireServer("RolePlayBio", r8_25.RPBio.Value)
          end
          if r8_25:FindFirstChild("RPNameColor") then
            r7_0.RPNameColor:FireServer("PickingRPNameColor", r8_25.RPNameColor.Value)
          end
          if r8_25:FindFirstChild("RPBioColor") then
            r7_0.RPNameColor:FireServer("PickingRPBioColor", r8_25.RPBioColor.Value)
          end
        end
      end
    end
  end,
})
-- close: r4_0
r4_0 = r3_0.Houses
r5_0 = false
r6_0 = false
r7_0 = nil
r8_0 = nil
r9_0 = {
  r10_0(1, 0, 0),
  Color3.new(0, 1, 0),
  Color3.new(0, 0, 1),
  Color3.new(1, 1, 0),
  Color3.new(0, 1, 1),
  Color3.new(1, 0, 1)
}
function r10_0()
  -- line: [0, 0] id: 27
  while r5_0 do
    local r0_27 = ipairs
    for r3_27, r4_27 in r0_27(r9_0) do
      if not r5_0 then
        return 
      end
      pcall(function()
        -- line: [0, 0] id: 28
        game:GetService("ReplicatedStorage"):FindFirstChild("RE"):FindFirstChild("1Player1sHous1e"):FireServer("ColorPickHouse", r4_27)
      end)
      task.wait(0.8)
      -- close: r3_27
    end
  end
end
local function r11_0(r0_53)
  -- line: [0, 0] id: 53
  r5_0 = r0_53
  if r5_0 then
    spawn(r10_0)
  end
end
local function r12_0()
  -- line: [0, 0] id: 24
  local r0_24 = {}
  local r1_24 = workspace:FindFirstChild("001_Lots")
  if r1_24 then
    for r5_24, r6_24 in ipairs(r1_24:GetChildren()) do
      if r6_24.Name ~= "For Sale" and r6_24:IsA("Model") then
        table.insert(r0_24, r6_24.Name)
      end
    end
  end
  return r0_24
end
r13_0 = r4_0:AddDropdown("HouseSelect", {
  Title = "Select House",
  Values = r12_0(),
  Default = "None",
})
r13_0:OnChanged(function(r0_46)
  -- line: [0, 0] id: 46
  r7_0 = r0_46
  if r8_0 then
    r8_0:SetValue(false)
  end
end)
r4_0:AddButton({
  Title = "Refresh House List",
  Callback = function()
    -- line: [0, 0] id: 37
    r13_0:SetValues(r12_0())
  end,
})
r4_0:AddButton({
  Title = "Teleport to House",
  Callback = function()
    -- line: [0, 0] id: 23
    local r0_23 = workspace["001_Lots"]:FindFirstChild(tostring(r7_0))
    if r0_23 and game.Players.LocalPlayer.Character then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(r0_23.WorldPivot.Position)
    end
  end,
})
r4_0:AddButton({
  Title = "Teleport to Safe",
  Callback = function()
    -- line: [0, 0] id: 62
    local r0_62 = workspace["001_Lots"]:FindFirstChild(tostring(r7_0))
    if r0_62 and r0_62:FindFirstChild("HousePickedByPlayer") then
      local r1_62 = r0_62.HousePickedByPlayer.HouseModel:FindFirstChild("001_Safe")
      if r1_62 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(r1_62.WorldPivot.Position)
      end
    end
  end,
})
r8_0 = r4_0:AddToggle("NoclipDoorToggle", {
  Title = "Noclip Through Door",
  Default = false,
  Callback = function(r0_79)
    -- line: [0, 0] id: 79
    pcall(function()
      -- line: [0, 0] id: 80
      local r0_80 = workspace["001_Lots"]:FindFirstChild(tostring(r7_0))
      if r0_80 and r0_80:FindFirstChild("HousePickedByPlayer") then
        for r4_80, r5_80 in ipairs(r0_80.HousePickedByPlayer.HouseModel:FindFirstChild("001_HouseDoors").HouseDoorFront:GetChildren()) do
          if r5_80:IsA("BasePart") then
            r5_80.CanCollide = not r0_79
          end
        end
      end
    end)
  end,
})
r4_0:AddToggle("RingDoorbellToggle", {
  Title = "Spam Doorbell",
  Default = false,
  Callback = function(r0_54)
    -- line: [0, 0] id: 54
    getgenv().spamDoorbell = r0_54
    spawn(function()
      -- line: [0, 0] id: 55
      while getgenv().spamDoorbell do
        local r0_55 = workspace["001_Lots"]:FindFirstChild(tostring(r7_0))
        if r0_55 and r0_55:FindFirstChild("HousePickedByPlayer") then
          local r1_55 = r0_55.HousePickedByPlayer.HouseModel:FindFirstChild("001_DoorBell")
          if r1_55 and r1_55:FindFirstChild("TouchBell") then
            fireclickdetector(r1_55.TouchBell.ClickDetector)
          end
        end
        task.wait(0.5)
      end
    end)
  end,
})
r4_0:AddSection("House Management")
r4_0:AddToggle("AutoUnbanToggle", {
  Title = "Auto Unban",
  Default = false,
  Callback = function(r0_38)
    -- line: [0, 0] id: 38
    r6_0 = r0_38
    if r6_0 then
      spawn(function()
        -- line: [0, 0] id: 39
        while r6_0 do
          pcall(function()
            -- line: [0, 0] id: 40
            for r3_40, r4_40 in pairs(workspace:WaitForChild("001_Lots"):GetDescendants()) do
              if r4_40.Name:match("^BannedBlock%d+$") then
                r4_40:Destroy()
              end
            end
          end)
          task.wait(1)
        end
      end)
    end
  end,
})
r4_0:AddToggle("HouseRGBToggle", {
  Title = "House RGB",
  Default = false,
  Callback = r11_0,
})
-- close: r4_0
r4_0 = r3_0.Audio
r5_0 = {
  {
    Name = "Yamete Kudasai",
    ID = 108494476595033,
  },
  {
    Name = "Scream",
    ID = 5710016194,
  },
  {
    Name = "Loud Noise",
    ID = 6855150757,
  },
  {
    Name = "Horror Jumpscare",
    ID = 85435253347146,
  },
  {
    Name = "Minecraft Witch",
    ID = 116214940486087,
  },
  {
    Name = "The Boiled One",
    ID = 137177653817621,
  },
  {
    Name = "Mandrake Detected",
    ID = 9068077052,
  },
  {
    Name = "Among Us",
    ID = 6651571134,
  },
  {
    Name = "Ear Exploder",
    ID = 268116333,
  },
  {
    Name = "Moan",
    ID = 106835463235574,
  }
}
r6_0 = nil
r7_0 = false
r8_0 = {}
r9_0 = ipairs
r10_0 = r5_0
for r12_0, r13_0 in r9_0(r10_0) do
  table.insert(r8_0, r13_0.Name)
end
r4_0:AddSection("Play Audio For All")
r12_0 = {
  Title = "Audio ID",
  Placeholder = "Enter custom audio ID",
  Numeric = true,
}
function r13_0(r0_63)
  -- line: [0, 0] id: 63
  r6_0 = tonumber(r0_63)
end
r12_0.Callback = r13_0
r4_0:AddInput("AudioIDInput", r12_0)
r12_0 = {
  Title = "Select Preset Audio",
  Values = r8_0,
}
r9_0 = r4_0:AddDropdown("AudioSelect", r12_0)
function r12_0(r0_41)
  -- line: [0, 0] id: 41
  for r4_41, r5_41 in ipairs(r5_0) do
    if r5_41.Name == r0_41 then
      r6_0 = r5_41.ID
      break
    end
  end
end
r9_0:OnChanged(r12_0)
function r10_0()
  -- line: [0, 0] id: 3
  local r0_3 = r6_0
  if r0_3 then
    r0_3 = game:GetService("ReplicatedStorage")
    pcall(function()
      -- line: [0, 0] id: 4
      r0_3.RE["1Gu1nSound1s"]:FireServer(workspace, r6_0, 1)
      local r0_4 = Instance.new("Sound", game.Players.LocalPlayer.Character.HumanoidRootPart)
      r0_4.SoundId = "rbxassetid://" .. r6_0
      r0_4:Play()
      task.delay(r0_4.TimeLength, function()
        -- line: [0, 0] id: 5
        r0_4:Destroy()
      end)
    end)
    -- close: r0_3
  else
    r0_3 = r0_0
    r0_3:Notify({
      Title = "Error",
      Content = "No audio ID selected.",
    })
  end
end
r13_0 = {
  Title = "Play Audio",
  Callback = r10_0,
}
r4_0:AddButton(r13_0)
r13_0 = "AudioLoopToggle"
r4_0:AddToggle(r13_0, {
  Title = "Loop Audio",
  Default = false,
  Callback = function(r0_1)
    -- line: [0, 0] id: 1
    r7_0 = r0_1
    if r7_0 then
      task.spawn(function()
        -- line: [0, 0] id: 2
        while r7_0 do
          r10_0()
          task.wait(0.5)
        end
      end)
    end
  end,
})
-- close: r4_0
r4_0 = r3_0.Server
r5_0 = game
r7_0 = "ReplicatedStorage"
r5_0 = r5_0:GetService(r7_0)
function r6_0()
  -- line: [0, 0] id: 14
  for r3_14 = 1, 500, 1 do
    pcall(function()
      -- line: [0, 0] id: 15
      r5_0.RE["1Too1l"]:InvokeServer("PickingTools", "FireHose")
      task.wait()
      game.Players.LocalPlayer.Backpack.FireHose.ToolSound:FireServer("FireHose", "DestroyFireHose")
    end)
  end
  local r0_14 = game.Players.LocalPlayer.Character
  if r0_14 then
    local r1_14 = r0_14.HumanoidRootPart.CFrame
    r0_14.HumanoidRootPart.CFrame = CFrame.new(9000000000, -475, 9000000000)
    repeat
      task.wait()
    until not r0_14.Parent
    repeat
      task.wait()
    until game.Players.LocalPlayer.Character
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = r1_14
  end
end
r9_0 = "Server Shutdown"
r4_0:AddSection(r9_0)
r9_0 = {
  Title = "Shutdown Server",
  Description = "Attempts to crash the server by spamming tool events.",
  Callback = r6_0,
}
r4_0:AddButton(r9_0)
-- close: r4_0
r4_0 = r3_0.Names
r5_0 = false
r6_0 = false
r9_0 = "RGB Name & Bio"
r4_0:AddSection(r9_0)
r9_0 = "RGBNameToggle"
r10_0 = {
  Title = "RGB Name",
  Default = false,
  Callback = function(r0_50)
    -- line: [0, 0] id: 50
    r5_0 = r0_50
  end,
}
r4_0:AddToggle(r9_0, r10_0)
r9_0 = "RGBBioToggle"
r10_0 = {
  Title = "RGB Bio",
  Default = false,
  Callback = function(r0_75)
    -- line: [0, 0] id: 75
    r6_0 = r0_75
  end,
}
r4_0:AddToggle(r9_0, r10_0)
r7_0 = {}
r8_0 = Color3
r8_0 = r8_0.fromRGB
r9_0 = 255
r10_0 = 0
r8_0 = r8_0(r9_0, r10_0, 0)
r9_0 = Color3
r9_0 = r9_0.fromRGB
r10_0 = 0
r12_0 = 0
r9_0 = r9_0(r10_0, 255, r12_0)
r10_0 = Color3
r10_0 = r10_0.fromRGB
r12_0 = 0
r13_0 = 255
r10_0 = r10_0(0, r12_0, r13_0)
r12_0 = 255
r13_0 = 255
r11_0 = Color3.fromRGB(r12_0, r13_0, 0)
r12_0 = Color3
r12_0 = r12_0.fromRGB
r13_0 = 255
r12_0 = r12_0(r13_0, 0, 255)
r13_0 = Color3
r13_0 = r13_0.fromRGB
... = r13_0(0, 255, 255) -- error: untaken top expr
-- setlist for #7 failed
r8_0 = spawn
function r9_0()
  -- line: [0, 0] id: 72
  -- notice: unreachable block#3
  while true do
    local r0_72 = r5_0
    if r0_72 then
      r0_72 = r7_0[math.random(#r7_0)]
      pcall(function()
        -- line: [0, 0] id: 73
        game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]:FireServer("PickingRPNameColor", r0_72)
      end)
      -- close: r0_72
    end
    r0_72 = task
    r0_72 = r0_72.wait
    r0_72(0.7)
  end
end
r8_0(r9_0)
r8_0 = spawn
function r9_0()
  -- line: [0, 0] id: 29
  -- notice: unreachable block#3
  while true do
    local r0_29 = r6_0
    if r0_29 then
      r0_29 = r7_0[math.random(#r7_0)]
      pcall(function()
        -- line: [0, 0] id: 30
        game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]:FireServer("PickingRPBioColor", r0_29)
      end)
      -- close: r0_29
    end
    r0_29 = task
    r0_29 = r0_29.wait
    r0_29(0.7)
  end
end
r8_0(r9_0)
r10_0 = "Preset Names"
r4_0:AddSection(r10_0)
r8_0 = {}
r9_0 = {}
r10_0 = "Anonymous"
r11_0 = " Anonymous "
-- setlist for #9 failed
r10_0 = {}
r11_0 = "PRO"
r12_0 = " PRO "
-- setlist for #10 failed
r11_0 = {
  "ERR0R_666",
  " ERR0R_666 "
}
r12_0 = {}
r13_0 = "DARKNESS"
r14_0 = " DARKNESS "
-- setlist for #12 failed
r13_0 = {}
r14_0 = "GHOST"
local r15_0 = " GHOST "
-- setlist for #13 failed
r14_0 = {
  "JOKER",
  " JOKER "
}
r15_0 = {
  "ADMIN",
  " ADMIN "
}
-- setlist for #8 failed
r9_0 = ipairs
r10_0 = r8_0
for r12_0, r13_0 in r9_0(r10_0) do
  local r16_0 = {}
  local r18_0 = r13_0[1]
  r16_0.Title = "Set Name: " .. r18_0
  local function r17_0()
    -- line: [0, 0] id: 68
    game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", r13_0[2])
  end
  r16_0.Callback = r17_0
  r4_0:AddButton(r16_0)
  -- close: r12_0
end
-- close: r4_0
r4_0 = r3_0.Vehicle
r5_0 = game
r7_0 = "ReplicatedStorage"
r5_0 = r5_0:GetService(r7_0)
r6_0 = game
r8_0 = "ReplicatedStorage"
r6_0 = r6_0:GetService(r8_0)
r8_0 = "RE"
r6_0 = r6_0:WaitForChild(r8_0)
r8_0 = "1Player1sCa1r"
r6_0 = r6_0:WaitForChild(r8_0)
r9_0 = "Vehicle Management"
r4_0:AddSection(r9_0)
r9_0 = {
  Title = "Bring All Cars",
}
function r10_0()
  -- line: [0, 0] id: 60
  for r3_60, r4_60 in pairs(workspace.Vehicles:GetChildren()) do
    pcall(function()
      -- line: [0, 0] id: 61
      r4_60:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame())
    end)
    -- close: r3_60
  end
end
r9_0.Callback = r10_0
r4_0:AddButton(r9_0)
r9_0 = {
  Title = "Remove All Cars",
}
function r10_0()
  -- line: [0, 0] id: 17
  pcall(function()
    -- line: [0, 0] id: 18
    r5_0.RE["1Ca1r"]:FireServer("DeleteAllVehicles")
  end)
end
r9_0.Callback = r10_0
r4_0:AddButton(r9_0)
r9_0 = "Vehicle Speed & Handling"
r4_0:AddSection(r9_0)
r9_0 = "CarSpeedSlider"
r10_0 = {
  Title = "Speed",
  Min = 10,
  Max = 500,
  Default = 50,
  Rounding = 0,
  Callback = function(r0_64)
    -- line: [0, 0] id: 64
    local r1_64 = workspace.Vehicles:FindFirstChild(game.Players.LocalPlayer.Name .. "Car")
    if r1_64 then
      r1_64.Body.VehicleSeat.TopSpeed.Value = r0_64
    end
  end,
}
r4_0:AddSlider(r9_0, r10_0)
r9_0 = "CarTurboSlider"
r10_0 = {
  Title = "Turbo",
  Min = 10,
  Max = 500,
  Default = 50,
  Rounding = 0,
  Callback = function(r0_76)
    -- line: [0, 0] id: 76
    local r1_76 = workspace.Vehicles:FindFirstChild(game.Players.LocalPlayer.Name .. "Car")
    if r1_76 then
      r1_76.Body.VehicleSeat.Turbo.Value = r0_76
    end
  end,
}
r4_0:AddSlider(r9_0, r10_0)
r9_0 = "CarDriftSlider"
r10_0 = {
  Title = "Drift",
  Min = 0,
  Max = 1,
  Default = 0,
  Rounding = 2,
  Increment = 0.01,
  Callback = function(r0_84)
    -- line: [0, 0] id: 84
    r6_0:FireServer("DriftingNumber", r0_84)
  end,
}
r4_0:AddSlider(r9_0, r10_0)
r9_0 = "Car Effects"
r4_0:AddSection(r9_0)
r9_0 = "CarRGBToggle"
r10_0 = {
  Title = "Car RGB",
  Default = false,
  Callback = function(r0_48)
    -- line: [0, 0] id: 48
    getgenv().carRGB = r0_48
    if r0_48 then
      task.spawn(function()
        -- line: [0, 0] id: 49
        local r0_49 = {
          Color3.new(1, 0, 0),
          Color3.new(0, 1, 0),
          Color3.new(0, 0, 1)
        }
        local r1_49 = 1
        while getgenv().carRGB do
          r6_0:FireServer("PickingCarColor", r0_49[r1_49])
          task.wait(0.5)
          local r2_49 = r1_49 % #r0_49
          r1_49 = r2_49 + 1
        end
      end)
    end
  end,
}
r4_0:AddToggle(r9_0, r10_0)
r9_0 = "CarHornToggle"
r10_0 = {
  Title = "Spam Horn",
  Default = false,
  Callback = function(r0_51)
    -- line: [0, 0] id: 51
    getgenv().spamHorn = r0_51
    if r0_51 then
      task.spawn(function()
        -- line: [0, 0] id: 52
        while getgenv().spamHorn do
          r6_0:FireServer("Horn")
          task.wait(0.1)
        end
      end)
    end
  end,
}
r4_0:AddToggle(r9_0, r10_0)
-- close: r4_0
r4_0 = r3_0.Child
r5_0 = game
r7_0 = "Players"
r5_0 = r5_0:GetService(r7_0)
r6_0 = game
r8_0 = "Players"
r6_0 = r6_0:GetService(r8_0)
r6_0 = r6_0.LocalPlayer
r7_0 = nil
function r8_0()
  -- line: [0, 0] id: 6
  local r0_6 = {}
  for r4_6, r5_6 in ipairs(r5_0:GetPlayers()) do
    if r5_6 ~= r6_0 then
      table.insert(r0_6, r5_6.Name)
    end
  end
  return r0_6
end
r4_0:AddSection("Child Control")
r12_0 = {
  Title = "Select Player to Haunt",
}
r13_0 = r8_0
r13_0 = r13_0()
r12_0.Values = r13_0
r9_0 = r4_0:AddDropdown("ChildTarget", r12_0)
function r12_0(r0_22)
  -- line: [0, 0] id: 22
  r7_0 = r0_22
end
r9_0:OnChanged(r12_0)
r12_0 = {
  Title = "Refresh Player List",
}
function r13_0()
  -- line: [0, 0] id: 82
  r9_0:SetValues(r8_0())
end
r12_0.Callback = r13_0
r4_0:AddButton(r12_0)
r12_0 = {
  Title = "Send Child",
}
function r13_0()
  -- line: [0, 0] id: 9
  if not r7_0 then
    r0_0:Notify({
      Title = "Error",
      Content = "No player selected.",
    })
    return 
  end
  if not workspace:FindFirstChild(r6_0.Name) or not workspace[r6_0.Name]:FindFirstChild("FollowCharacter") then
    game:GetService("ReplicatedStorage").RE["1Bab1yFollo1w"]:FireServer("CharacterFollowSpawnPlayer", "BabyBoy")
  end
  task.wait(0.2)
  if workspace:FindFirstChild(r6_0.Name) then
    for r3_9, r4_9 in pairs(workspace[r6_0.Name]:GetChildren()) do
      if r4_9:IsA("BasePart") then
        r4_9.CanCollide = true
      end
    end
  end
  local r0_9 = r7_0
  if workspace:FindFirstChild(r0_9) and workspace:FindFirstChild(r6_0.Name) and workspace[r6_0.Name]:FindFirstChild("FollowCharacter") then
    workspace[r6_0.Name].FollowCharacter.Parent = workspace[r0_9]
    if getgenv().childFollowConnection then
      getgenv().childFollowConnection:Disconnect()
      getgenv().childFollowConnection = nil
    end
    getgenv().childFollowConnection = game:GetService("RunService").Heartbeat:Connect(function()
      -- line: [0, 0] id: 10
      local r0_10 = workspace[r0_9] and workspace[r0_9]:FindFirstChild("FollowCharacter")
      if r0_10 and r0_10:FindFirstChild("Torso") and r0_10.Torso:FindFirstChild("BodyPosition") then
        local r1_10 = workspace[r0_9]:FindFirstChild("HumanoidRootPart")
        if r1_10 then
          r0_10.Torso.BodyPosition.Position = r1_10.Position - r1_10.CFrame.LookVector * 3
          r0_10.Torso.BodyGyro.CFrame = r1_10.CFrame
        end
      elseif getgenv().childFollowConnection then
        getgenv().childFollowConnection:Disconnect()
        getgenv().childFollowConnection = nil
      end
    end)
  end
end
r12_0.Callback = r13_0
r4_0:AddButton(r12_0)
r12_0 = {
  Title = "Return Child",
}
function r13_0()
  -- line: [0, 0] id: 70
  if getgenv().childFollowConnection then
    getgenv().childFollowConnection:Disconnect()
    getgenv().childFollowConnection = nil
  end
  game:GetService("ReplicatedStorage").RE["1Bab1yFollo1w"]:FireServer("DeleteFollowCharacter")
  task.wait()
  game:GetService("ReplicatedStorage").RE["1Bab1yFollo1w"]:FireServer("CharacterFollowSpawnPlayer", "BabyBoy")
end
r12_0.Callback = r13_0
r4_0:AddButton(r12_0)
-- close: r4_0
r4_0 = r3_0.LocalPlayer
r5_0 = game
r5_0 = r5_0.Players
r5_0 = r5_0.LocalPlayer
r8_0 = "Movement"
r4_0:AddSection(r8_0)
r8_0 = "WalkSpeedSlider"
r9_0 = {
  Title = "WalkSpeed",
  Min = 16,
  Max = 200,
  Default = 16,
  Rounding = 0,
}
function r10_0(r0_94)
  -- line: [0, 0] id: 94
  if r5_0.Character and r5_0.Character:FindFirstChild("Humanoid") then
    r5_0.Character.Humanoid.WalkSpeed = r0_94
  end
end
r9_0.Callback = r10_0
r4_0:AddSlider(r8_0, r9_0)
r8_0 = "JumpPowerSlider"
r9_0 = {
  Title = "JumpPower",
  Min = 50,
  Max = 300,
  Default = 50,
  Rounding = 0,
}
function r10_0(r0_77)
  -- line: [0, 0] id: 77
  if r5_0.Character and r5_0.Character:FindFirstChild("Humanoid") then
    r5_0.Character.Humanoid.JumpPower = r0_77
  end
end
r9_0.Callback = r10_0
r4_0:AddSlider(r8_0, r9_0)
r8_0 = "GravitySlider"
r9_0 = {
  Title = "Gravity",
  Min = 10,
  Max = 196.2,
  Default = 196.2,
  Rounding = 1,
}
function r10_0(r0_26)
  -- line: [0, 0] id: 26
  workspace.Gravity = r0_26
end
r9_0.Callback = r10_0
r4_0:AddSlider(r8_0, r9_0)
r8_0 = "Chat"
r4_0:AddSection(r8_0)
r6_0 = ""
r7_0 = game
r9_0 = "TextChatService"
r7_0 = r7_0:GetService(r9_0)
r8_0 = r7_0.ChatInputBarConfiguration
if r8_0 then
  r8_0 = r7_0.ChatInputBarConfiguration
  r8_0 = r8_0.TargetTextChannel
end
function r9_0(r0_42)
  -- line: [0, 0] id: 42
  if not r0_42 or r0_42 == "" then
    return 
  end
  if r7_0.ChatVersion == Enum.ChatVersion.LegacyChatService then
    pcall(function()
      -- line: [0, 0] id: 44
      game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(r0_42, "All")
    end)
  elseif r8_0 then
    pcall(function()
      -- line: [0, 0] id: 43
      r8_0:SendAsync(r0_42)
    end)
  end
end
sendchat = r9_0
r12_0 = {
  Title = "Message",
  Placeholder = "Enter text to spam",
}
function r13_0(r0_21)
  -- line: [0, 0] id: 21
  r6_0 = r0_21
end
r12_0.Callback = r13_0
r4_0:AddInput("ChatInput", r12_0)
r12_0 = {}
r13_0 = "Spam Delay"
r12_0.Title = r13_0
r13_0 = 0.4
r12_0.Min = r13_0
r13_0 = 10
r12_0.Max = r13_0
r13_0 = 1
r12_0.Default = r13_0
r13_0 = 0.1
r12_0.Increment = r13_0
r13_0 = 1
r12_0.Rounding = r13_0
function r13_0(r0_71)
  -- line: [0, 0] id: 71
  getgenv().chatDelay = r0_71
end
r12_0.Callback = r13_0
r4_0:AddSlider("ChatDelaySlider", r12_0)
r12_0 = {}
r13_0 = "Spam Chat"
r12_0.Title = r13_0
r13_0 = false
r12_0.Default = r13_0
function r13_0(r0_66)
  -- line: [0, 0] id: 66
  getgenv().spamChat = r0_66
  while getgenv().spamChat do
    sendchat(r6_0)
    local r1_66 = task.wait
    r1_66(getgenv().chatDelay or 1)
  end
end
r12_0.Callback = r13_0
r4_0:AddToggle("ChatSpamToggle", r12_0)
-- close: r4_0
r4_0 = r3_0.Teleports
r5_0 = {}
r6_0 = {}
r7_0 = "To Backstage"
r8_0 = CFrame
r8_0 = r8_0.new
r9_0 = 192
r10_0 = 4
... = r8_0(r9_0, r10_0, 272) -- error: untaken top expr
-- setlist for #6 failed
r7_0 = {}
r8_0 = "To Downtown"
r9_0 = CFrame
r9_0 = r9_0.new
r10_0 = 136
r12_0 = 117
... = r9_0(r10_0, 4, r12_0) -- error: untaken top expr
-- setlist for #7 failed
r8_0 = {}
r9_0 = "To Crime Area"
r10_0 = CFrame
r10_0 = r10_0.new
r12_0 = -28
r13_0 = 235
... = r10_0(-119, r12_0, r13_0) -- error: untaken top expr
-- setlist for #8 failed
r9_0 = {}
r10_0 = "To Desert House"
r12_0 = 986
r13_0 = 4
... = CFrame.new(r12_0, r13_0, 63) -- error: untaken top expr
-- setlist for #9 failed
r10_0 = {}
r11_0 = "To Agency Portal"
r12_0 = CFrame
r12_0 = r12_0.new
r13_0 = 672
... = r12_0(r13_0, 4, -296) -- error: untaken top expr
-- setlist for #10 failed
r11_0 = {
  "To Hideout",
  r13_0.new,
  r13_0(505, -75, 143)
}
r12_0 = {}
r13_0 = "To School"
... = CFrame.new(-312, 4, 211) -- error: untaken top expr
-- setlist for #12 failed
r13_0 = {}
r14_0 = "To Brook Cafe"
... = CFrame.new(161, 8, 52) -- error: untaken top expr
-- setlist for #13 failed
r14_0 = {
  "To Spawn Point",
  CFrame.new(-26, 4, -23)
}
r15_0 = {
  "To Main Arch",
  CFrame.new(-589, 141, -59)
}
local r16_0 = {
  "To Hospital",
  CFrame.new(-309, 4, 71)
}
local r17_0 = {
  "To Agency Base",
  CFrame.new(179, 4, -464)
}
-- setlist for #5 failed
r8_0 = "Locations"
r4_0:AddSection(r8_0)
r6_0 = ipairs
r7_0 = r5_0
for r9_0, r10_0 in r6_0(r7_0) do
  r13_0 = {
    Title = r10_0[1],
  }
  function r14_0()
    -- line: [0, 0] id: 69
    if game.Players.LocalPlayer.Character then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = r10_0[2]
    end
  end
  r13_0.Callback = r14_0
  r4_0:AddButton(r13_0)
  -- close: r9_0
end
r4_0 = r3_0.Universal
r7_0 = "Universal Scripts"
r4_0:AddSection(r7_0)
r7_0 = {}
r8_0 = "Infinite Yield"
r7_0.Title = r8_0
function r8_0()
  -- line: [0, 0] id: 45
  loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end
r7_0.Callback = r8_0
r4_0:AddButton(r7_0)
r7_0 = {}
r8_0 = "Rael Hub"
r7_0.Title = r8_0
function r8_0()
  -- line: [0, 0] id: 65
  loadstring(game:HttpGet("https://rawscripts.net/raw/The-Mimic-Rael-Hub-20921"))()
end
r7_0.Callback = r8_0
r4_0:AddButton(r7_0)
r7_0 = {}
r8_0 = "ShiftLock"
r7_0.Title = r8_0
function r8_0()
  -- line: [0, 0] id: 19
  loadstring(game:HttpGet("https://pastebin.com/raw/N2tiHgyv"))()
end
r7_0.Callback = r8_0
r4_0:AddButton(r7_0)
r7_0 = {}
r8_0 = "Fly GUI"
r7_0.Title = r8_0
function r8_0()
  -- line: [0, 0] id: 59
  loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Fly-v3-7412"))()
end
r7_0.Callback = r8_0
r4_0:AddButton(r7_0)
r7_0 = {}
r8_0 = "Nameless Admin"
r7_0.Title = r8_0
function r8_0()
  -- line: [0, 0] id: 78
  loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
end
r7_0.Callback = r8_0
r4_0:AddButton(r7_0)
r7_0 = {}
r8_0 = "Telekinesis"
r7_0.Title = r8_0
function r8_0()
  -- line: [0, 0] id: 20
  loadstring(game:HttpGet("https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md", true))()
end
r7_0.Callback = r8_0
r4_0:AddButton(r7_0)
r6_0 = "SelectTab"
r6_0 = 1
r1_0:[r6_0](r6_0)
r6_0 = "Notify"
r6_0 = {}
r7_0 = "Soluna Loaded"
r6_0.Title = r7_0
r7_0 = "Welcome! UI successfully loaded."
r6_0.Content = r7_0
r7_0 = "Duration"
r8_0 = 5
r6_0[r7_0] = r8_0
r0_0:[r6_0](r6_0)
r6_0 = "Notify"
r6_0 = {}
r7_0 = "Hint"
r6_0.Title = r7_0
r7_0 = "Press Right-Control to minimize or show the UI."
r6_0.Content = r7_0
r7_0 = "Duration"
r8_0 = 7
r6_0[r7_0] = r8_0
r0_0:[r6_0](r6_0)
