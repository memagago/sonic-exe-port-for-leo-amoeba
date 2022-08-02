function onCreate()
	-- background shit
	makeLuaSprite('bg', 'blackscreen', -545, -345);
	scaleObject('bg',3.7, 3.7);

      addLuaSprite('bg', false);
	
	
end

function onBeatHit()

     if curStep >= 0 and curStep < 783 then 

        setProperty('timeBar.color', getColorFromHex('08C1F8'))-- bf
     end

     if curStep >= 783 and curStep < 1047 then 

        setProperty('timeBar.color', getColorFromHex('F8CF02'))-- requital
     end

     if curStep >= 1047 and curStep < 1055 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- what?
     end

     if curStep >= 1055 then 

        setProperty('timeBar.color', getColorFromHex('C2FF69'))-- pico 
     end

end


