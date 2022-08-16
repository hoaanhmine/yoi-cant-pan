function onCreate()
    makeLuaSprite('VG', 'RedVG', 0, 0)
    setObjectCamera('VG', 'hud')
    addLuaSprite('VG', true)
    setProperty('VG.visible', false)
end


function onEvent(name, value1, value2)
    if name == 'RedVG' then
        if value1 == '1' then
            runTimer('Vg Start', 0.01, 1)
            addLuaSprite('VG', true)
        end
        if value1 == '2' then
            runTimer('Vg Kill', 0.01, 1)
        end
    end
end

function onTimerCompleted(tag, loops, LoopsLeft)
    if tag == 'Vg Start' then
        setProperty('VG.visible', true)
        runTimer('Vg Dissappear', 0.01, 1)
    end
    if tag == 'Vg Dissappear' then
        doTweenAlpha('VG', 'VG', 0, 1.2, 'linear')
        runTimer('Vg Appear', 2.4, 1)
    end
    if tag == 'Vg Appear' then
        doTweenAlpha('VG', 'VG', 1, 1.2, 'linear')
        runTimer('Vg Dissappear', 1.4, 1)
    end
    if tag == 'Vg Kill' then
        removeLuaSprite('VG', false)
    end
end