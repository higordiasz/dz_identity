fx_version 'adamant'
game 'gta5'

author 'Diasz'
contact 'Discord: Dias#1869'
version '1.0.0'

ui_page 'nui/darkside.html'

client_scripts {
	'@vrp/lib/utils.lua',
	'hansolo/*.lua'
}

server_scripts {
	'@vrp/lib/utils.lua',
	'skywalker.lua'
}

files {
	'nui/*.html',
	'nui/*.js',
    'nui/*.css',
	'nui/**/*'
}