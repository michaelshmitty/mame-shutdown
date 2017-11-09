-- license:BSD-3-Clause
-- copyright-holders:Michael Smith
local exports = {}
exports.name = "shutdown"
exports.version = "0.0.1"
exports.description = "Shut down a Windows system from the MAME menu."
exports.license = "The BSD 3-Clause License"
exports.author = { name = "Michael Smith" }

local shutdown = exports

function shutdown.startplugin()
    local function menu_populate()
        return {{ "Really shut down system?", "", "off" }, { "No", "", "" }, { "Yes", "", "" }}
    end

    local function menu_callback(index, event)
        if event == "select" and index == 3 then
            os.execute("shutdown /s /t 0")
        end
        return false
    end

    emu.register_menu(menu_callback, menu_populate, "System shutdown...")
end

return exports
