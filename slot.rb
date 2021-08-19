puts "------------------"
puts "残コイン数：100"
puts "ポイント 0"
coin = 100
point = 0
loop do

  select = [5,10,20,"やめとく"]
  
  num1 = rand(9)
  num2 = rand(6..7)
  num3 = rand(9)
  num4 = rand(9)
  num5 = rand(6..7)
  num6 = rand(9)
  num7 = rand(9)
  num8 = rand(6..7)
  num9 = rand(9)

  puts "何コイン入れますか？"
  puts "0(5コイン),1(10コイン),2(20コイン),3(やめる),"
  puts "------------------"
  putin = gets.to_i

  if putin == 3
    puts "またチャレンジしてね！"
    break
  elsif coin < select[putin]
    puts "#{select[putin]- coin}コイン足りないよ。またチャレンジしてね！"
    break
  end

  puts "Enterを3回押して数字を揃えよう！" 
  puts = gets
  puts "-------------"
  puts "|#{num1}| | |"
  puts "|#{num2}| | |"
  puts "|#{num3}| | |"
  puts = gets
  puts "-------------"
  puts "|#{num1}|#{num4}| |"
  puts "|#{num2}|#{num5}| |"
  puts "|#{num3}|#{num6}| |"
  puts = gets
  puts "-------------"
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"

  if ( num2 == 7 ) && ( num5 == 7 )  && ( num8 == 7 )
    puts "-------------"
    puts "ラッキーセブン！真ん中に7の数字がそろったよ！"
    puts "100コイン獲得！"
    puts "500ポイント獲得！"
    puts "-------------"
    coin = coin + 100 - select[putin]
    point = point + 500
    puts "残コイン数：#{coin}"
    puts "獲得ポイント#{point}"
  elsif (num2 == num5) && (num5 == num8) 
    puts "-------------"
    puts "おめでとう！真ん中に同じ数字がそろったよ！"
    puts "50コイン獲得！"
    puts "200ポイント獲得！"
    puts "-------------"
    coin = coin + 50 - select[putin]
    point = point + 200
    puts "残コイン数：#{coin}"
    puts "獲得ポイント#{point}"
  else
    puts "-------------"
    puts "残念！もう一回チャレンジしよう！"
    coin = coin - select[putin]
    puts "残コイン数：#{coin}"
    puts "獲得ポイント#{point}"
  end

end
