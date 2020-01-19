-- このファイルはVCIから取り出したコピーです。
-- 有効にするにはファイル名先頭の'_'を削除してください 

print("SmartMonitor 読み込み完了")

function update()
    --日時取得
    print(os.date("%Y-%m-%d %H:%M:%S %a曜日"))
    local ymd = os.date(("%Y年 %m月 %d日\n%a曜日"))
    local HMS = os.date(("%H : %M : %S"))
    local wday = os.date("%a")
    local hour = os.date("%H")

    --祝日・記念日(2020)
    local date = os.date(("%M%D"))
    local syukujitu = ""
    if date == "0211" then
      local syukujitu = "\n建国記念の日"
    end
    if date == "0223" then
      local syukujitu = "\n天皇誕生日"
    end
    if date == "0224" then
      local syukujitu = "\n天皇誕生日 振替休日"
    end
    if date == "0320" then
      local syukujitu = "\n春分の日"
    end
    if date == "0413" then
      local syukujitu = "\n★Vキャス2周年★"
    end
    if date == "0429" then
      local syukujitu = "\n昭和の日"
    end
    if date == "0503" then
      local syukujitu = "\n憲法記念日"
    end
    if date == "0504" then
      local syukujitu = "\nみどりの日"
    end
    if date == "0505" then
      local syukujitu = "\nこどもの日"
    end
    if date == "0506" then
      local syukujitu = "\n憲法記念日 振替休日"
    end
    if date == "0723" then
      local syukujitu = "\n海の日"
    end
    if date == "0724" then
      local syukujitu = "\n体育の日"
    end
    if date == "0810" then
      local syukujitu = "\n山の日"
    end
    if date == "0921" then
      local syukujitu = "\n敬老の日"
    end
    if date == "0922" then
      local syukujitu = "\n秋分の日"
    end
    if date == "1103" then
      local syukujitu = "\n文化の日"
    end
    if date == "1123" then
      local syukujitu = "\n勤労感謝の日"
    end
    if date == "1231" then
      local syukujitu = "\n大晦日"
    end
    print(tostring(syukujitu))

    --日時出力
    vci.assets._ALL_SetText("date", tostring(ymd)..tostring(syukujitu))
    vci.assets._ALL_SetText("hh:mm:ss", tostring(HMS))

    --タイムスケジュール
    local timesc = ""
    if hour == "00" then
      local timesc = "night"
    end
    if hour == "01" then
      local timesc = "night"
    end
    if hour == "02" then
      local timesc = "night"
    end
    if hour == "03" then
      local timesc = "night"
    end
    if hour == "04" then
      local timesc = "night"
    end
    if hour == "05" then
      local timesc = "morning"
    end
    if hour == "06" then
      local timesc = "morning"
    end
    if hour == "07" then
      local timesc = "morning"
    end
    if hour == "08" then
      local timesc = "morning"
    end
    if hour == "09" then
      local timesc = "morning"
    end
    if hour == "10" then
      local timesc = "morning"
    end
    if hour == "11" then
      local timesc = "noon"
    end
    if hour == "12" then
      local timesc = "noon"
    end
    if hour == "13" then
      local timesc = "noon"
    end
    if hour == "14" then
      local timesc = "noon"
    end
    if hour == "15" then
      local timesc = "noon"
    end
    if hour == "16" then
      local timesc = "noon"
    end
    if hour == "17" then
      local timesc = "noon"
    end
    if hour == "18" then
      local timesc = "noon"
    end
    if hour == "19" then
      local timesc = "night"
    end
    if hour == "20" then
      local timesc = "night"
    end
    if hour == "21" then
      local timesc = "night"
    end
    if hour == "22" then
      local timesc = "night"
    end
    if hour == "23" then
      local timesc = "night"
    end
end
