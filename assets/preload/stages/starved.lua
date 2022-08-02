function onUpdate()
   setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 317.5)
   setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 317.5)
   setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 317.5)
   setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 317.5)

   setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0 + 1000)
   setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1 + 1000)
   setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2 + 1000)
   setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX3 + 1000)

   setPropertyFromGroup('opponentStrums', 0, 'y', defaultPlayerStrumY0 + 1000)
   setPropertyFromGroup('opponentStrums', 1, 'y', defaultPlayerStrumY1 + 1000)
   setPropertyFromGroup('opponentStrums', 2, 'y', defaultPlayerStrumY2 + 1000)
   setPropertyFromGroup('opponentStrums', 3, 'y', defaultPlayerStrumY3 + 1000)
end
function onCreate()
	-- background shit
	precacheImage('starved/sonicisfuckingdead')
	precacheImage('starved/camara negra')

	makeLuaSprite('towers', 'starved/towers', -400, -215);
	setScrollFactor('towers', 0.75, 0.75);
	scaleObject('towers', 1.47, 1.4);

	makeLuaSprite('city', 'starved/city', -400, -225);
	setScrollFactor('city', 0.75, 0.75);
	scaleObject('city', 1.47, 1.4);

	makeLuaSprite('stage', 'starved/stage', -400, -275);
	scaleObject('stage', 1.47, 1.4);

	makeLuaSprite('sonicisfuckingdead', 'starved/sonicisfuckingdead', 130, 50);
	scaleObject('sonicisfuckingdead', 0.6, 0.6);

	makeLuaSprite('light', 'starved/light', -258, -300);
	scaleObject('light', 0.9, 0.9);

	
      addLuaSprite('city', false);
	addLuaSprite('towers', false);
	addLuaSprite('stage', false);
	addLuaSprite('sonicisfuckingdead', false);
	addLuaSprite('light', true);

	
end

function onBeatHit()

     if curStep >= 0 and curStep < 1182 then 

        setProperty('timeBar.color', getColorFromHex('F68905'))-- tails 1
     end

     if curStep >= 1182 and curStep < 1439 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- starved 1
     end

     if curStep >= 1439 and curStep < 1471 then 

        setProperty('timeBar.color', getColorFromHex('7485B9'))-- sonic dead
     end

     if curStep >= 1471 and curStep < 1727 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- starved 2
     end

     if curStep >= 1727 then 

        setProperty('timeBar.color', getColorFromHex('F68905'))-- tails 2
     end

end
