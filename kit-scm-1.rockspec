package = 'kit'
version = 'scm-1'
source  = {
	url    = 'git://github.com/moonlibs/kit.git',
	branch = 'master',
}
description = {
	summary  = "Compatibility kit for 1.6+",
	homepage = 'https://github.com/moonlibs/kit.git',
	license  = 'BSD',
}
dependencies = {
	'lua >= 5.1'
}
build = {
	type = 'builtin',
	modules = {
		['kit']       = 'kit.lua';
		['kit.1']     = 'kit/1.lua';
		['kit.loc']   = 'kit/loc.lua';
		['kit.1.6']   = 'kit/1/6.lua';
		['kit.1.7']   = 'kit/1/7.lua';
		['kit.1.6.0'] = 'kit/1/6/0.lua';
	}
}

-- vim: syntax=lua
