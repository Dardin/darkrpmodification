--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]
TEAM_THIEF = DarkRP.createJob("Thief", {
    color = Color(0, 0, 0, 255),
    model = "models/player/robber.mdl",
    description = [[You are a thief, rob people, lockpick their house and steal their plants and legal printers.]],
    weapons = {"lockpick"}, -- You may wanna find a pickpocket swep and add it here.
    command = "thief",
    max = 2,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

color = Color(51, 204, 255, 255),
    model = "models/player/Kleiner.mdl",
    description = [[You deal drugs to those in need.
                Be careful, may get arrested if caught in the act!]],
    weapons = {},
    command = "drug",
    max = 2,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})
TEAM_HITMAN = DarkRP.createJob("Hitman", {
    color = Color(0, 0, 0, 255),
    model = "models/player/sunabouzu.mdl",
    description = [[People hire you to take out other people,
    this job require you to be completely focussed.
    A single breath can make you loose a shot.]],
    weapons = {"m9k_m24"},
    command = "hitman",
    max = 1,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_MD = DarkRP.createJob("Mayors Daughter", {
    color = Color(255,100,100,255),
    model = "models/player/alyx.mdl",
    description = [[You are the mayors daughter, walk around with your dad
                just chill around. But be careful, you never know when somebody
                is waiting to kidnap you!]],
    weapons = {},
    command = "mayorsdaughter",
    max = 1,
    salary = 80,
    admin = 0,
    vote = false,
    hasLicense = false
})



TEAM_GUARD = DarkRP.createJob("Guard", {
    color = Color(0,200,50,255),
    model = "models/player/barney.mdl",
    description = [[People will pay for protection, use your weapon or buy one from the local gundealer.]],
    weapons = {"weapon_deagle2"},
    command = "guard",
    max = 1,
    salary = 85,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Citizens",
})
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
