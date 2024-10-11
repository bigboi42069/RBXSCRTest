local function getNil(name, class)
    for _, v in pairs(getnilinstances()) do
        if v.ClassName == class and v.Name == name then
            return v
        end
    end
end

local drawerClickDetector = workspace.Drawer:FindFirstChild("ClickDetector")
if drawerClickDetector and drawerClickDetector.Detector then
    drawerClickDetector.Detector:FireServer()
else
    warn("Drawer ClickDetector or Detector not found.")
end

local pizzaSlicer = workspace.Drawer:FindFirstChild("Pizza Slicer")
if pizzaSlicer and pizzaSlicer:FindFirstChild("ClickDetector") and pizzaSlicer.ClickDetector:FindFirstChild("Detector") then
    pizzaSlicer.ClickDetector.Detector:FireServer()
else
    warn("Pizza Slicer ClickDetector or Detector not found.")
end

local animationStartedEvent = workspace.Animation:FindFirstChild("AnimationStarted")
if animationStartedEvent then
    local args = { [1] = "ToolHold" }
    animationStartedEvent:FireServer(unpack(args))
else
    warn("AnimationStarted event not found.")
end

if drawerClickDetector and drawerClickDetector.Detector then
    drawerClickDetector.Detector:FireServer()
end

local communicationEvents = game:GetService("ReplicatedStorage"):FindFirstChild("Communication"):FindFirstChild("Events")

local args1 = {
    [1] = getNil("BoxClosed", "Part"),
    [2] = "Anchored",
    [3] = true
}

local event1 = communicationEvents:FindFirstChild("BoxClosed")
if event1 then
    event1:FireServer(unpack(args1))
else
    warn("BoxClosed not found in Communication.Events.")
end

local args2 = {
    [1] = getNil("BoxClosed", "Part"),
    [2] = "CFrame",
    [3] = CFrame.new(Vector3.new(74.5, 8.9, 10.5), Vector3.new(0, 0, -1))
}

local event2 = communicationEvents:FindFirstChild("BoxClosed")
if event2 then
    event2:FireServer(unpack(args2))
else
    warn("BoxClosed not found in Communication.Events.")
end

local args3 = { [1] = getNil("BoxClosed", "Part") }
workspace.GameService.DraggingStarted:FireServer(unpack(args3))

local boxClosedInstance = getNil("BoxClosed", "Part")
local args4 = { [1] = boxClosedInstance }

local event3 = communicationEvents:FindFirstChild("BoxClosed")
if event3 then
    event3:FireServer(unpack(args4))
else
    warn("BoxClosed not found in Communication.Events.")
end

local args5 = {
    [1] = getNil("Pizza", "Part"),
    [2] = "Anchored",
    [3] = true
}

local event4 = communicationEvents:FindFirstChild("Pizza")
if event4 then
    event4:FireServer(unpack(args5))
else
    warn("Pizza not found in Communication.Events.")
end

local args6 = {
    [1] = getNil("Pizza", "Part"),
    [2] = "CFrame",
    [3] = CFrame.new(Vector3.new(59.5, 2.8, 31.5), Vector3.new(0, 0, -1))
}

local event5 = communicationEvents:FindFirstChild("Pizza")
if event5 then
    event5:FireServer(unpack(args6))
else
    warn("Pizza not found in Communication.Events.")
end

local args7 = { [1] = getNil("Pizza", "Part") }
workspace.GameService.DraggingStarted:FireServer(unpack(args7))

local args8 = {
    [1] = workspace.AllBox:FindFirstChild("BoxOpen"),
    [2] = getNil("Pizza", "Part")
}

local event6 = communicationEvents:FindFirstChild("Pizza")
if event6 then
    event6:FireServer(unpack(args8))
else
    warn("Pizza not found in Communication.Events.")
end

local args9 = {
    [1] = workspace.AllBox:FindFirstChild("BoxOpen"),
    [2] = 16148
}

local event7 = communicationEvents:FindFirstChild("BoxOpen")
if event7 then
    event7:FireServer(unpack(args9))
else
    warn("BoxOpen not found in Communication.Events.")
end

local boxOpenInstance = getNil("BoxOpen", "UnionOperation")
local args10 = { [1] = boxOpenInstance }

local event8 = communicationEvents:FindFirstChild("BoxOpen")
if event8 then
    event8:FireServer(unpack(args10))
else
    warn("BoxOpen not found in Communication.Events.")
end

local args11 = {
    [1] = getNil("BoxClosed", "Part"),
    [2] = "Anchored",
    [3] = true
}

local event9 = communicationEvents:FindFirstChild("BoxClosed")
if event9 then
    event9:FireServer(unpack(args11))
else
    warn("BoxClosed not found in Communication.Events.")
end

local args12 = { [1] = getNil("BoxClosed", "Part") }
workspace.GameService.DraggingStarted:FireServer(unpack(args12))

local args13 = {
    [1] = getNil("BoxClosed", "Part"),
    [2] = "CFrame",
    [3] = CFrame.new(Vector3.new(68.2, 4.4, 4.9), Vector3.new(-1, 0, 0))
}

local event10 = communicationEvents:FindFirstChild("BoxClosed")
if event10 then
    event10:FireServer(unpack(args13))
else
    warn("BoxClosed not found in Communication.Events.")
end

local args14 = {
    [1] = workspace.AllBox:FindFirstChild("BoxClosed"),
    [2] = "Anchored",
    [3] = false
}

local event11 = communicationEvents:FindFirstChild("BoxClosed")
if event11 then
    event11:FireServer(unpack(args14))
else
    warn("BoxClosed not found in Communication.Events.")
end
