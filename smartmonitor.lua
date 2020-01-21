-- original

print("SmartMonitor 読み込み完了")

function update()
    --日時取得
    print(os.date("%Y-%m-%d %H:%M:%S %a曜日"))
    local ymd = os.date(("%Y年 %m月 %d日\n%a曜日"))
    local HMS = os.date(("%H : %M : %S"))
    local wday = os.date(("%a"))
    local month = os.date(("%m"))
    local numday = tonumber(os.date("%d"))
    local hour = os.date(("%H"))

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
    vci.assets._ALL_SetText("date", tostring(ymd) .. tostring(syukujitu))
    vci.assets._ALL_SetText("hh:mm:ss", tostring(HMS))

    --時間帯あいさつ
    local timesc = ""
    if hour == "00" then
        local timesc = "こんばんは！"
    end
    if hour == "01" then
        local timesc = "こんばんは！"
    end
    if hour == "02" then
        local timesc = "こんばんは！"
    end
    if hour == "03" then
        local timesc = "こんばんは！"
    end
    if hour == "04" then
        local timesc = "おはようございます！"
    end
    if hour == "05" then
        local timesc = "おはようございます！"
    end
    if hour == "06" then
        local timesc = "おはようございます！"
    end
    if hour == "07" then
        local timesc = "おはようございます！"
    end
    if hour == "08" then
        local timesc = "おはようございます！"
    end
    if hour == "09" then
        local timesc = "おはようございます！"
    end
    if hour == "10" then
        local timesc = "おはようございます！"
    end
    if hour == "11" then
        local timesc = "こんにちは！"
    end
    if hour == "12" then
        local timesc = "こんにちは！"
    end
    if hour == "13" then
        local timesc = "こんにちは！"
    end
    if hour == "14" then
        local timesc = "こんにちは！"
    end
    if hour == "15" then
        local timesc = "こんにちは！"
    end
    if hour == "16" then
        local timesc = "こんにちは！"
    end
    if hour == "17" then
        local timesc = "こんにちは！"
    end
    if hour == "18" then
        local timesc = "こんにちは！"
    end
    if hour == "19" then
        local timesc = "こんばんは！"
    end
    if hour == "20" then
        local timesc = "こんばんは！"
    end
    if hour == "21" then
        local timesc = "こんばんは！"
    end
    if hour == "22" then
        local timesc = "こんばんは！"
    end
    if hour == "23" then
        local timesc = "こんばんは！"
    end

    --day num 月末金曜判定
    local check_month = (numday + 8)
    local check_month_31 = "no"
    local check_month_30 = "no"
    local check_month_Fev_uru = "no"
    local check_month_Fev = "no"

    if (check_month >= 31) and (month == "1" or "3" or "5" or "7" or "8" or "10" or "12") then
        check_month_31 = "yes"
    end
    if (check_month >= 30) and (check_month ~= 31) and (month == "4" or "6" or "9" or "11") then
        check_month_30 = "yes"
    end
    if (check_month >= 28) and (month == "2") then
        check_month_Fev = "yes"
    end
    if (check_month >= 29) and (month == "2") then
        check_month_Fev_uru = "yes"
    end

    --message
    local message = ""

    --時間帯
    if (hour == "18" or "19" or "20") and (wday ~= "土" or "日") then
        message = "おかえり～！\nお仕事お疲れさま！！"
    end
    if (hour == "22" or "23") and (wday == "金" or "土") then
        message = "明日休みだしオールしない？"
    end
    if (hour == "0" or "1") and (wday == "金" or "土") then
        message = "今季のアニメ神すぎる..."
    end
    if (hour == "2" or "3" or "4") then
        message = "そろそろ寝ないと\n明日起きれなくなるよ...？"
    end
    if (hour == "5" or "6" or "7" or "8") then
        message = "すごい！早起き！\n今日も一日がんばろー！おー！！"
    end

    --曜日
    if (timesc == "こんにちは！") and (wday == "火") then
        message = "今日どっかのスーパーで特売やってるよ！\n豚キムチ食べたいなぁ～"
    end
    if (timesc == "こんにちは！") and (wday == "金") then
        message = "金曜日なのでカレーが食べたいです！"
    end

    --月末金曜
    if
        (wday == "金") and (check_month_30 == "yes") or (check_month_31 == "yes") or (check_month_Fev == "yes") or
            (check_month_Fev_uru == "yes")
     then
        message = "今日は\nプレミアムフライデー\nらしいですよ！\nちょっと贅沢しませんか・・・？"
    end

    --季節
    if (month == "6") and (timesc == "こんにちは！") then
        message = "いまの季節毎年雨多いね...\nなんでかなぁ...？"
    end
    if (month == "8") and (timesc == "こんにちは！") and (wday == "水") then
        message = "あづい～...\nプールいきたいよぉ..."
    end
    if (month == "09") and (timesc == "こんばんは！") then
        message = "今日は月が綺麗に見えますね...♪"
    end
    if (month == "11" or "12" or "1" or "2") and (timesc == "こんにちは！" or "こんばんは！") then
        message = "ゔぅ...寒い...\nキミも風邪ひかないでね..."
    end
end
