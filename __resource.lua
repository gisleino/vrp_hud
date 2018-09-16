resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page "HTML/hud.html"

files{
    "HTML/hud.html",
    "HTML/hud.css",
    "HTML/hud.js",
}

client_scripts {
    '@vrp/lib/utils.lua',
    "client.lua",
}
server_scripts {
    '@vrp/lib/utils.lua',
    "server.lua",
}