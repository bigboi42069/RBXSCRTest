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
if pizzaSlicer and pizzaSlicer.ClickDetector and pizzaSlicer.ClickDetector.Detector then
    pizzaSlicer.ClickDetector.Detector:FireServer()
else
    warn("Pizza Slicer ClickDetector or Detector not found.")
end
local animationStartedEvent = workspace.Animation:FindFirstChild("AnimationStarted")
if animationStartedEvent then
    local args = { "ToolHold" }
    animationStartedEvent:FireServer(unpack(args))
else
    warn("AnimationStarted event not found.")
end
if drawerClickDetector and drawerClickDetector.Detector then
    drawerClickDetector.Detector:FireServer()
else
    warn("Drawer ClickDetector or Detector not found (second fire).")
end
local boxClosedEvent = game:GetService("ReplicatedStorage"):FindFirstChild("BoxClosed")
if boxClosedEvent then
    local args = {
        boxClosedEvent,
        "Anchored",
        true
    }
    game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild("SpecificEventName"):FireServer(unpack(args))
else
    warn("BoxClosed event not found.")
end
if boxClosedEvent then
    local args = {
        boxClosedEvent,
        "CFrame",
        CFrame.new(Vector3.new(74.5, 8.899999618530273, 10.5), Vector3.new(0, 0, -1))
    }
    game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild("SpecificEventName"):FireServer(unpack(args))
else
    warn("BoxClosed event not found for CFrame.")
end
if workspace.GameService:FindFirstChild("DraggingStarted") then
    local args = { boxClosedEvent }
    workspace.GameService.DraggingStarted:FireServer(unpack(args))
else
    warn("DraggingStarted event not found in GameService.")
end
local boxClosedPart = getNil("BoxClosed", "Part")
if boxClosedPart then
    local args = { boxClosedPart }
    game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild("SpecificEventName"):FireServer(unpack(args))
else
    warn("BoxClosed Part not found in nil instances.")
end
local pizzaEvent = game:GetService("ReplicatedStorage"):FindFirstChild("Pizza")
if pizzaEvent then
    local args = {
        pizzaEvent,
        "Anchored",
        true
    }
    game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild("SpecificEventName"):FireServer(unpack(args))
else
    warn("Pizza event not found.")
end
if pizzaEvent then
    local args = {
        pizzaEvent,
        "CFrame",
        CFrame.new(Vector3.new(59.5, 2.799999952316284, 31.5), Vector3.new(0, 0, -1))
    }
    game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild("SpecificEventName"):FireServer(unpack(args))
else
    warn("Pizza event not found for CFrame.")
end
if workspace.GameService:FindFirstChild("DraggingStarted") then
    local args = { pizzaEvent }
    workspace.GameService.DraggingStarted:FireServer(unpack(args))
else
    warn("DraggingStarted event not found for Pizza.")
end
local boxOpen = workspace.AllBox:FindFirstChild("BoxOpen")
if boxOpen and pizzaEvent then
    local args = { boxOpen, pizzaEvent }
    game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild("SpecificEventName"):FireServer(unpack(args))
else
    warn("BoxOpen or Pizza event not found.")
end
if boxOpen then
    local args = { boxOpen, 16148 }
    game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild("SpecificEventName"):FireServer(unpack(args))
else
    warn("BoxOpen event not found for number.")
end
local boxOpenUnion = getNil("BoxOpen", "UnionOperation")
if boxOpenUnion then
    local args = { boxOpenUnion }
    game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild("SpecificEventName"):FireServer(unpack(args))
else
    warn("BoxOpen UnionOperation not found in nil instances.")
end
if boxClosedEvent then
    local args = {
        boxClosedEvent,
        "Anchored",
        true
    }
    game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild("SpecificEventName"):FireServer(unpack(args))
else
    warn("BoxClosed event not found for Anchored.")
end
if workspace.GameService:FindFirstChild("DraggingStarted") then
    local args = { boxClosedEvent }
    workspace.GameService.DraggingStarted:FireServer(unpack(args))
else
    warn("DraggingStarted event not found for BoxClosed.")
end
if boxClosedEvent then
    local args = {
        boxClosedEvent,
        "CFrame",
        CFrame.new(Vector3.new(68.1999740600586, 4.40000057220459, 4.900001525878906), Vector3.new(-1, 0, 0))
    }
    game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild("SpecificEventName"):FireServer(unpack(args))
else
    warn("BoxClosed event not found for CFrame.")
end
local allBoxClosed = workspace.AllBox:FindFirstChild("BoxClosed")
if allBoxClosed then
    local args = {
        allBoxClosed,
        "Anchored",
        false
    }
    game:GetService("ReplicatedStorage").Communication.Events:FindFirstChild("SpecificEventName"):FireServer(unpack(args))
else
    warn("AllBox BoxClosed not found.")
end