function onCreate()
    precacheImage('hitStatic')
    makeAnimatedLuaSprite('StaticImageStaticNote','hitStatic',0,0)
    addAnimationByPrefix('StaticImageStaticNote','static','staticANIMATION',24,false)
    setObjectCamera('StaticImageStaticNote','other')
    for i = 0,getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i,'noteType') == 'staticNotes' then
            setPropertyFromGroup('unspawnNotes', i,'texture','staticNotes')
        end
    end
end

function noteMiss(id,data,noteType,sus)
    if noteType == 'staticNotes' then
        addLuaSprite('StaticImageStaticNote',true)
        objectPlayAnimation('StaticImageStaticNote','static',false)
        playSound('hitStatic1')
    end
end
function onUpdate()
    if getProperty('StaticImageStaticNote.animation.curAnim.finished') then
        removeLuaSprite('StaticImageStaticNote',false)
    end
end
  