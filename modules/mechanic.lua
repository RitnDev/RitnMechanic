
-- Quand le joueur est créer :
local function on_player_created(e)
    RitnLibEvent(e):getPlayer():getForce():getRecipe("automation-science-pack"):setEnabled(false)
end

----------------------------------------------------------------
local module = { events = {} }
module.events[defines.events.on_player_created] = on_player_created
----------------------------------------------------------------
return module