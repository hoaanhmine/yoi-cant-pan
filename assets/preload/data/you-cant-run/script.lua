local bfcamX = 0;
local bfcamY = 0;
local camX = 0;
local camY = 0;

    function onCreate()
	makeLuaSprite('blackbg', 'dablack', 0, 0);

    makeLuaSprite('circle', 'CircleYouCantRun', 777, 0);

    makeLuaSprite('text', 'TextYouCantRun', -1200, 0);

    setObjectCamera('circle', 'hud');

    setObjectCamera('text', 'hud');

    addLuaSprite('circle', true);
    addLuaSprite('text', true);
     end 
     function onTweenCompleted(tag)
    if tag == 'circleTweenX' then
        doTweenAlpha('removecircle', 'circle', 0, 1, 'linear');
    end
    if tag == 'textTweenX' then
        doTweenAlpha('removetext', 'text', 0, 1, 'linear');
    end
    if tag == 'removetext' then 
        removeLuaSprite('text');
        doTweenAlpha('removebg', 'blackbg', 0, 0.5, 'linear');
    end
    if tag == 'removecircle' then 
        removeLuaSprite('circle');
    end
end
function onStepHit()
    if curStep == 1 then 
        doTweenX('circleTweenX', 'circle', 0, 1, 'linear');
        doTweenX('textTweenX', 'text', 0, 1, 'linear');

end        
    end 