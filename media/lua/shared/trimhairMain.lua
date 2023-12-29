-- add new context menu option
local function trimContextMenu(player)

    if clickedPlayer == playerObj then -- you can only trim yourself
        option = context:addOption(getText("ContextMenu_Medical_Check"), worldobjects, ISWorldObjectContextMenu.onMedicalCheck, playerObj, clickedPlayer)

    end -- check for hair cutting implements

    -- if hair cutting implements, then show trim hair and trim beard options
end

-- trim hair function
local function cutHair(player)
    local scissors = self.character:getInventory():getItemFromType("Scissors")
    -- try and equip appropriate item in hands
    if scissors then
        local equipped = playerObj:getPrimaryHandItem()
        if equipped ~= scissors then
            scissors = equipped
        end
        -- hair cutting animation doesn't exist yet. sorry. will add here when that exists
        -- reset hair growing time upon completion
        player.resetHairGrowingTime()
        -- put item back where it was

    else
        player:Say("I don't have any scissors...")
        end

end

-- trim beard function
local function cutBeard(player)
    local scissors = self.character:getInventory():getItemFromType("Scissors")
    if player:getInventory():getItemFromType("Scissors") then
        -- try and equip appropriate item in hands

        -- beard cutting animation
        ISTimedActionQueue.add(CharacterActionAnims.Shave:new(player))
        -- reset beard growing time upon completion
        player.resetBeardGrowingTime()
        -- put item back where it was


    local razor = self.character:getInventory():getItemFromType("Razor")
    elseif player:getInventory():getItemFromType("Razor") then
        -- try and equip appropriate item in hands
        -- beard cutting animation
        ISTimedActionQueue.add(CharacterActionAnims.Shave:new(player))
        -- reset beard growing time upon completion
        player.resetBeardGrowingTime()
        -- put item back where it was

    else
        player:Say("I don't have scissors or a razor...")
    end

end


