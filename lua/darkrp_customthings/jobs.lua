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

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]



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
}--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
TEAM_POLICE = DarkRP.createJob("Police Officer", {
    color = ,
    model = {"models/player/magnusson.mdl"},
    description = [[You fight crimes, arrest criminals and guard the prison]],
    weapons = {"weapon_shotgun", "weapon_fist"},
    command = "OfficerDuty",
    max = 2,
    salary = 467,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    medic = true,
    cook = true,
    NeedToChangeFrom = TEAM_POLICE,
    customCheck = function(ply) return
        table.HasValue({TEAM_MOB}, ply:Team())
    end,
    CustomCheckFailMsg = "GOODBYE",
})
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
