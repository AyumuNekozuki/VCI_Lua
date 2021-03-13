-- original

print("SmartMonitor 読み込み完了")

function update()
    --日時取得
    print(os.date("%Y-%m-%d %H:%M:%S %a曜日"))
    local ymd = os.date(("%Y年 %m月 %d日\n%a曜日"))
    local HMS = os.date(("%H : %M : %S"))

    --日時出力
    vci.assets._ALL_SetText("date", tostring(ymd))
    vci.assets._ALL_SetText("time", tostring(HMS))
end
