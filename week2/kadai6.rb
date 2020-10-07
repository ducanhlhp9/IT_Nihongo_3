class Check
  attr_accessor :count

  def initialize(count:)
    self.count = count
  end
  def nihongo()
    puts "日本語を選択しました。"
    puts "アカウントとパスワードを入力してください"
    checkAccount
  end

  def english()
    puts "you chose english。"
    puts "enter account and password"
    checkAccount
  end

  def vietnamese()
    puts "bạn đã chọn tiếng Việt。"
    puts "Nhập vào tài khoản và mật khẩu"
    checkAccount
  end

  def checkAccount
    menu = Menu.new(name: 'abc', password: "123", money: 123456789)
    if count == 1
      print "アカウント >"
      account = String(gets.chomp) rescue ''
      print "暗証番号  >"
      password = String(gets.chomp) rescue ''
    elsif count == 2
      print "account >"
      account = String(gets.chomp) rescue ''
      print "password >"
      password = String(gets.chomp) rescue ''
    elsif count == 3
      print "Tài khoản >"
      account = String(gets.chomp) rescue ''
      print "Mật khẩu >"
      password = String(gets.chomp) rescue ''
    end

    if account == menu.name && password == menu.password
      if count == 1
        puts "引き出したい金額を入力してください"
      elsif count == 2
        puts "Please enter the amount you want to withdraw"
      elsif count == 3
        puts "vui lòng nhập số tiền muốn rút"
      end
      number = Integer(gets.chomp) rescue ''
      if number > menu.money - 50000
        if count == 1
          puts "引き出したい金額が上限を超えています"
          puts "-------------終了-------------"
        elsif count == 2
          puts "The amount you want to withdraw exceeds the upper limit"
          puts "The End"
        elsif count == 3
          puts "Số tiền bạn muốn rút vượt quá giới hạn trên"
          puts "kết thúc"
        end

      else
        menu.money = menu.money - number

        if count == 1
          puts "引き出し金額は#{number}です"
          puts "残りの金額は#{menu.money}です"
        elsif count == 2
          puts "The withdrawal amount is: #{number}"
          puts "The remaining amount is: #{menu.money}"
        elsif count == 3
          puts "Số tiền rút là#{number}"
          puts "Số tiền còn lại là: #{menu.money}"
        end
      end
    else

      if count == 1
        puts "アカウントとパスワードの入力が間違いました"
        puts "-------------終了-------------"
      elsif count == 2
        puts "wrong account or password"
        puts "-------------The End-------------"
      elsif count == 3
        puts "Nhập sai tài khoản Hoặc mật khẩu"
        puts "-------------Kết thúc-------------"
      end
    end
  end
end

class Menu
  attr_accessor :name
  attr_accessor :password
  attr_accessor :money

  def initialize(name:, password:, money:)
    self.name = name
    self.password = password
    self.money = money
  end
end

puts "言語を選んでください: "
puts "英語の場合は１を選んでください"
puts "日本語の場合は２を選んでください"
puts "ベトナム語の場合は３を選んでください"
choice = gets.to_i
check = Check.new(count: choice)
case choice
when 1 then
  check.nihongo();
when 2 then
  check.english()
when 3 then
  check.vietnamese()
else
  puts "番号が間違っています"
  puts "-------------THE END-------------"
end
