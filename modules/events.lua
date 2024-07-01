local table = require(ritnlib.defines.table)


local function on_init_mod()
    log('RitnMechanic -> on_init')

    local created_items
    pcall(function() created_items = remote.call("freeplay", "get_created_items") end)

    if table.isTable(created_items) then 
        created_items["assembling-machine-0"] = 1
        pcall(function() remote.call("freeplay", "set_created_items", created_items) end)
    else 
        log("created_items is't a table !")
    end

    log('on_init : RitnMechanic -> finish !')
end


---------------------------------
local events = {}
---------------------------------
events.on_init = on_init_mod
events.on_load = on_init_mod
---------------------------------
log('RitnMechanic -> events modules')
return events
---------------------------------