function onCreate()
	-- background shit
	makeLuaSprite('sky', 'hog/bg', -1165, -575);
	scaleObject('sky',1.8, 2.3);

	makeAnimatedLuaSprite('hill', 'hog/HillsandHills', -358, 225);
	scaleObject('hill',1.0, 1.0);

	makeAnimatedLuaSprite('you', 'hog/TargetLock', 753, 425);
	scaleObject('you',1.0, 1.0);

	makeLuaSprite('light', 'hog/overlay', -1595, -715);
	scaleObject('light',1.5, 1.6);

	makeLuaSprite('mountain', 'hog/motains', -900, 55);
	scaleObject('mountain',1.0, 1.0);

	makeAnimatedLuaSprite('waterfall', 'hog/Waterfalls', -958, 215);
	scaleObject('waterfall',1.0, 1.0);

	makeLuaSprite('rocks', 'hog/rocks', -630, 600);
    setLuaSpriteScrollFactor('rocks', 0.9, 0.9);
	scaleObject('rocks',1.0, 1.0);

	makeLuaSprite('trees', 'hog/trees', -545, -135);
	scaleObject('trees',1.0, 1.0);

	makeLuaSprite('floor', 'hog/floor', -1295, 695);
	scaleObject('floor',1.5, 1.0);

	makeLuaSprite('black', 'blackscreen', -945, -255);
	scaleObject('black',1.0, 1.0);


      addLuaSprite('sky', false);
	addLuaSprite('mountain', false);
	addLuaSprite('waterfall', false); 
	addAnimationByPrefix('waterfall', 'idle', 'British', 15, true);
	addLuaSprite('hill', false);
      addAnimationByPrefix('hill', 'idle', 'DumbassMF',9, true);
      addLuaSprite('trees', false);
	addLuaSprite('floor', false);
      addLuaSprite('rocks', true);
	addLuaSprite('light', true);

      removeLuaSprite('you', false)
      removeAnimationByPrefix('you', 'idle', 'TargetLock',27, true);
      removeLuaSprite('black', false)

	
end

function onBeatHit()
		if curStep >= 208 and curStep < 227 then
            addLuaSprite('you',true)
            addAnimationByPrefix('you', 'idle', 'TargetLock',27, true);
		end 
		if curStep >= 227 and curStep < 302 then
            removeLuaSprite('you',true)
            removeAnimationByPrefix('you', 'idle', 'TargetLock',27, true);
		end 
		if curStep >= 302 and curStep < 319 then
            addLuaSprite('you',true)
            addAnimationByPrefix('you', 'idle', 'TargetLock',27, true);
		end 
		if curStep >= 319 then
            removeLuaSprite('you',true)
            removeAnimationByPrefix('you', 'idle', 'TargetLock',27, true);
		end 
		if curStep >= 864 and curStep < 5039 then
            removeLuaSprite('sky', false);
	      removeLuaSprite('mountain', false);
	      removeLuaSprite('waterfall', false); 
	      removeAnimationByPrefix('waterfall', 'idle', 'British', 15, true);
	      removeLuaSprite('hill', false);
            removeAnimationByPrefix('hill', 'idle', 'DumbassMF',9, true);
            removeLuaSprite('trees', false);
	      removeLuaSprite('floor', false);
            removeLuaSprite('rocks', true);
	      removeLuaSprite('light', true);
            addLuaSprite('black',false)
		end 

end



