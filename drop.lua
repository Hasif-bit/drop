-- Function to equip a fruit
local function equipFruit(player, fruitName)
    -- Check if the item exists in your inventory
    if player.Backpack:FindFirstChild(fruitName) then
        local tool = player.Backpack[fruitName]

        -- Equip the item
        tool.Parent = player.Character
        tool.Grip = CFrame.new(Vector3.new(), Vector3.new(0, 0, 0)) -- You might need to adjust this grip position
    else
        warn("Item not found in inventory.")
    end
end

-- Function to drop a fruit
local function dropFruit(player, fruitName)
    -- Check if the fruit is currently equipped
    local equippedFruit = player.Character:FindFirstChild(fruitName)
    if equippedFruit then
        -- Drop the fruit
        local args = {
            [1] = "Drop"
        }
        
        equippedFruit.EatRemote:InvokeServer(unpack(args))
    else
        warn("Fruit not currently equipped.")
    end
end

-- List of fruit names to equip and drop
local fruitsToEquipAndDrop = {
    "Kilo Fruit",
    "Spin Fruit",
    "Chop Fruit",
    "Spring Fruit",
    "Bomb Fruit",
    "Smoke Fruit",
    "Spike Fruit",
    "Flame Fruit",
    "Falcon Fruit",
    "Ice Fruit",
    "Sand Fruit",
    "Dark Fruit",
    "Revive Fruit",
    "Diamond Fruit",
    "Light Fruit",
    "Rubber Fruit",
    "Barrier Fruit",
    "Magma Fruit"
}

-- Equip all fruits first
for _, fruitName in ipairs(fruitsToEquipAndDrop) do
    equipFruit(game.Players.LocalPlayer, fruitName)
end

-- Drop all fruits one by one
for _, fruitName in ipairs(fruitsToEquipAndDrop) do
    dropFruit(game.Players.LocalPlayer, fruitName)
end
