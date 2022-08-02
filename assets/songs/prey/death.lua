function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-sonic-gameover'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'prey-death'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'prey-loop'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'prey-retry'); --put in mods/music/
end
-- Code by A Random Octoling, please do not reuse without my permission unless you own this mod.
function onGameOver()
    setProperty('health', -500);
    math.randomseed(os.clock()/4.0)
    local num = math.random(1,5)
    local name = tostring(num)
    playSound(name, 1, 'deathquote')
end