module Judgement #ジャンケン決着後の処理

def result
    direction =["↑","↓","→","←"] #方向を配列で代入
    x = gets.to_i #方向選択
    y = rand(0..3) #方向ランダム選択
    puts"------\nあなた:#{direction[x]}\n相手:#{direction[y]}\n------" #あっち向いての結果表示
    get_x = x #case用に代入

    if "#{self}" == "win" #勝利時の処理
    case get_x
     when y #あっち向いてで勝ちの時
        puts"OOO勝ちですOOO\n------"
    end

    else #敗北時の処理
    case get_x #あっち向いてで負けの時
     when y
        puts"XXX負けですXXX\n------"
    end
    end
end
end


loop do
    puts"ジャンケン...\n0(✊)1(✌️)2(✋)3(終了)"
    comand =["✊","✌️","✋"]
    number = gets.chomp #ジャンケン選択

    if number == "3" #3を押したらプログラム終了
        break
    elsif number == "0" || number == "1" || number == "2" #1か2か3が押された時
        i = rand(0..2) #乱数代入
        b = comand[i]
        puts"ホイ\n------"
        puts "あなたは#{comand[number.to_i]}です\n相手は#{b}です" #ジャンケンの結果表示
    else
        puts"------\n0か1か2か3を押してください\n------" #1.2.3以外が押された時
        next
    end  

    if number == "0" #✊の時
    case b
     when "✊"
        puts"あいこで\n------"
        next
     when "✌️"
        match = "win"
     when "✋"
        match = "lose"
    end

    elsif number == "1" #✌️の時
    case b
     when "✌️"
        puts"あいこで\n------"
        next
     when "✋"
        match = "win"
     when "✊"
        match = "lose"
    end

    else  #✋の時
    case b
     when "✋"
        puts"あいこで\n------"
        next
     when "✊"
        match = "win"
     when "✌️"
        match = "lose"
    end
    end

puts"------\nあっち向いて\n0(↑)1(↓)2(→)3(←)"
match.extend(Judgement)
match.result() #モジュールでジャンケン後の処理
end