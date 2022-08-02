function onCreate()
	-- background shit
	makeLuaSprite('bg', 'xterion/sky', -400, 50);
	setScrollFactor('bg', 0.9, 0.9);
	
      makeLuaSprite('floor', 'xterion/floor', -450, 750);
      scaleObject('floor', 1.2, 1.2);



	addLuaSprite('bg', false);
	addLuaSprite('floor', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end