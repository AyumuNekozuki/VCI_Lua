print("天候VCI 読み込みました")

local eff_snow = vci.assets.GetEffekseerEmitter("snow")
local eff_rain = vci.assets.GetEffekseerEmitter("rain")

local toggle = true

function onUse(use)
    --switch_use toggle反転
    if use == "swtch" then
        toggle = not(toggle)

        if toggle == true then
            --stop rain
            eff_rain._ALL_Stop()
            --play snow
            eff_snow._ALL_Play()
            print("天候 : 雪")
        end

        if toggle == false then
            --stop snow
            eff_snow._ALL_Stop()
            --play rain
            eff_rain._ALL_Play()
            print("天候 : 雨")
    end
end


--数字キー 1 が押されたとき
--全エフェクト停止
if vci.me.GetButtonInput(1) then
    eff_snow._ALL_Stop()
    eff_rain._ALL_Stop()
    print("天候 : 晴れ")
end

--数字キー 2 が押されたとき
--天候 : 雪
if vci.me.GetButtonInput(2) then
    eff_snow._ALL_Play()
    eff_rain._ALL_Stop()
    print("天候 : 雪")
end

--数字キー 3 が押されたとき
--天候 : 雨
if vci.me.GetButtonInput(2) then
    eff_snow._ALL_Stop())
    eff_rain._ALL_Play()
    print("天候 : 雨")
end


