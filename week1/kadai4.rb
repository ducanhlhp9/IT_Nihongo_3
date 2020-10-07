print "整数を入力してください "

while number = Integer(gets.chomp) rescue ''
  if number.is_a? Integer
    puts "あなたの整数は #{number}"
    if number%2 ==0  && number % 7 == 0
      p '14の倍数です'
    elsif number % 7 == 0 && number %2 != 0
      p '7の倍数です'
    elsif number%2 ==0 && number %7 != 0
      p '2の倍数です'
    else
      p "通常の数"
    end
    break
  else
    print "整数じゃない、もう一度整数を入力してください \n"
  end
end
