
def fist
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
end

def finger
  puts "0(上) 1(下) 2(左) 3(右)"
end


def battle
  puts "じゃんけん・・・"
  fist
  choice = gets.chomp.to_i
  puts "ホイ！"
  puts "------------------------------------------"
  if choice == 0
    choice = "0(グー)"
  elsif choice == 1
    choice = "1(チョキ)"
  elsif choice == 2
    choice = "2(パー)"
  elsif choice == 3
    return
  end
  puts "あなた :#{choice}を出しました。"

  choices = [0, 1, 2]
  enemiesChoice = choices.sample
  if enemiesChoice == 0
    enemiesChoice = "0(グー)"
  elsif enemiesChoice == 1
    enemiesChoice = "1(チョキ)"
  elsif enemiesChoice == 2
    enemiesChoice = "2(パー)"
  end
  puts "あいて :#{enemiesChoice}を出しました。"
  puts "------------------------------------------"

  if choice == enemiesChoice
    puts "あいこで〜"
    battle
  elsif choice == "0(グー)" && enemiesChoice == "1(チョキ)" ||
        choice == "1(チョキ)"&& enemiesChoice == "2(パー)" ||
        choice == "2(パー)" && enemiesChoice == "0(グー)"
        judge = "勝ち"

  elsif enemiesChoice == "0(グー)" && choice == "1(チョキ)" ||
        enemiesChoice == "1(チョキ)"&& choice == "2(パー)" ||
        enemiesChoice == "2(パー)" && choice == "0(グー)"
        judge = "負け"

  end

  if judge == "勝ち"
    puts "チャンスです！"
  elsif judge == "負け"
    puts "ピンチです！"
  end



  puts "あっち向いて〜"
  finger
  choice2 = gets.chomp.to_i
  puts "ホイ！"
  if choice2 == 0
      choice2 = "0(上)"
    elsif choice2 == 1
      choice2 = "1(下)"
    elsif choice2 == 2
      choice2 = "2(左)"
    elsif choice2 == 2
      choice2 = "3(右)"
    end
  puts "------------------------------------------"
  puts "あなた :#{choice2}を出しました。"

  choices2 = [0, 1, 2, 3]
  enemiesChoice2 = choices2.sample
  if enemiesChoice2 == 0
    enemiesChoice2 = "0(上)"
  elsif enemiesChoice2 == 1
    enemiesChoice2 = "1(下)"
  elsif enemiesChoice2 == 2
    enemiesChoice2 = "2(左)"
  elsif enemiesChoice2 == 3
    enemiesChoice2 = "3(右)"
  end
  puts "あいて :#{enemiesChoice2}を出しました。"
  puts "------------------------------------------"

  if judge == "勝ち" && choice2 == enemiesChoice2
    puts "勝利！"
  elsif
    judge == "負け" && choice2 == enemiesChoice2
    puts "負け！"
  else
    puts "-継続-"
    battle
  end

end

def start
  while true do
    puts "じゃんけんアプリ（あっち向いてホイつき）"
    puts "------------------------------------------"
    puts "1・・・対戦する"
    puts "2・・・終了する"
    puts "番号を選択してください"
    puts "------------------------------------------"
    num = gets.chomp.to_i
    if num == 1
      battle
    elsif num == 2
      break
    else
      puts "半角で数字を入力してください。"
      puts "------------------------------------------"
    end
  end
end
start




#  じゃんけんで自分が出す手を画面入力で選ぶことができる
#  相手プレーヤーが出す手をランダムで出力させる
#  じゃんけんで勝った側があっち向いてホイです指を差す方向を決める
#  じゃんけんで負けた側があっち向いてホイで顔を向ける方向を決める
#  勝負がついた場合はどちらが勝者かわかるように文字列などで出力する
