--textobj → TextMeshProのオブジェクトです（別のものに書き込みたいときは書き換えて下さい）
--massgetext → 実際に表示される文章です（書き換えて下さい！）

--触った時
function onTriggerEnter(item, hit)
    if (hit == "HandPointMarker") or (item == "HandPointMarker") then
        vci.assets._ALL_SetText("textobj", "messagetext")
    end
end
--手を離した時
function onTriggerExit(item, hit)
    if (hit == "HandPointMarker") or (item == "HandPointMarker") then
        vci.assets._ALL_SetText("textobj", "")
    end
end
