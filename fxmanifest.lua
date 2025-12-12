fx_version 'cerulean'
game 'gta5'

author 'Jestar'
description 'Template for a modular resource'
version '1.0.0'

shared_scripts {
    -- Uncomment this if you use ox_lib
    -- '@ox_lib/init.lua',

    'config.lua',
    'modules/**/config.lua',
}

client_scripts {
    'utils/c_func.lua',
    'modules/**/c_config.lua',
    'modules/**/client.lua',
}

server_scripts {
    'utils/s_func.lua',
    'modules/**/s_config.lua',
    'modules/**/server.lua',
}

files {
    'locales/*.json' -- optional, if you plan on using a locale system
}

lua54 'yes'