fx_version 'adamant'
game 'gta5'
lua54 'yes'

ui_page "html/index.html"

files {
    'html/**',
}

shared_script '@es_extended/imports.lua'

client_scripts {
    "config.lua",
    "client.lua"
}
