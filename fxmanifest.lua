fx_version 'adamant'

game 'gta5'

this_is_a_map "yes"

description 'UN core job qui contient plusieurs job'


client_scripts {
    'src/RMenu.lua',
    'src/menu/RageUI.lua',
    'src/menu/Menu.lua',
    'src/menu/MenuController.lua',
    'src/components/*.lua',
    'src/menu/elements/*.lua',
    'src/menu/items/*.lua',
    'src/menu/panels/*.lua',
    'src/menu/windows/*.lua',

}



client_scripts {

    "client.lua",

}



server_scripts{

    "server.lua",
}

