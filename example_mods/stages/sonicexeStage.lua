function onCreate()
	-- background shit
	makeLuaSprite('sky', 'SonicP2/sky', -400, -100);
	setLuaSpriteScrollFactor('sky', 1, 1)
   

    makeLuaSprite('backtrees', 'SonicP2/backtrees',-400,-50);
	setLuaSpriteScrollFactor('backtrees', 0.5, 0.5)
	
	makeLuaSprite('trees', 'SonicP2/trees',-400,160);
	
    makeLuaSprite('ground', 'SonicP2/ground',-400,180);
	
	makeAnimatedLuaSprite('bgscroll', 'SonicP2/bgscroll', -1100, 170);
	addAnimationByPrefix('bgscroll','bgscroll',"bgscroll", 40, true);
	objectPlayAnimation('bgscroll', 'bgscroll',false)
	
	
	
	addLuaSprite('sky', false);
	addLuaSprite('backtrees',false);
    addLuaSprite('trees',false);
    addLuaSprite('ground',false);


end

function onCreatePost()
    makeLuaText("message", "HMFNF PORT", 640, 300, 600)
    setTextAlignment("message", "right")
    setProperty('message.x', 20)
    addLuaText("message")
    setTextFont('message', 'vcr.ttf');       
	if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 650)
        setProperty('engineText.y', 600)
    end
end

 function onStepHit()
	if curStep == 528 then
		setProperty('defaultCamZoom',7)
		triggerEvent('Change Character', 'bf', 'pixel-bf');

		triggerEvent('Change Character', 'dad', 'pixel-demo');

		setCharacterX('boyfriend', 650);

		setCharacterY('boyfriend', 320);

		setCharacterX('dad', 570);

		setCharacterY('dad', 300);

		setProperty('thefrickinbg.visible', false);

		setProperty('thefrickinbg2.antialiasing', true);

		makeLuaSprite('thefrickinbg2', 'SonicP2/GangGarrison', 500, 200);

		addLuaSprite('thefrickinbg2', false);
		
	end
	if curStep == 784 then
        addLuaSprite('bgscroll', false);
        removeLuaSprite('ground', false);
	    removeLuaSprite('trees', false);


        setProperty('defaultCamZoom',0.8)
		triggerEvent('Change Character', 'bf', 'bf-running');

		triggerEvent('Change Character', 'dad', 'demoman-charging');

		setCharacterX('boyfriend', 1300);

		setCharacterY('boyfriend', 400);

		setCharacterX('dad', 250);

		setCharacterY('dad', 500);
		

		setProperty('thefrickinbg2.visible', false);

		setProperty('thefrickinbg.visible', true);
    end
end