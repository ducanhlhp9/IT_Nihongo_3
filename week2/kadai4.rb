class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info
    "#{name} #{price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  # initializeメソッドをオーバーライドする
  # nameとpriceはsuperとする
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    self.size = size
  end

  def info
    "#{name} #{price}vnd
(#{size} サイズ)"
  end
end

menu1 = Menu.new(name: 'Phở', price: 30_000)
menu2 = Menu.new(name: 'Bún chả', price: 40_000)
menu3 = Menu.new(name: 'bánh mì', price: 20_000)
# Drinkの変数を定義してください
drink1 = Drink.new(name: 'trà', price: 5000, size: 'S')
drink2 = Drink.new(name: 'trà', price: 10_000, size: 'M')
# 変数menusを定義して配列を代入してください
menus = [menu1, menu2, menu3, drink1, drink2]
index = 1
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end
puts '--------------'
puts 'メニューの番号を選択してください'
order = gets.to_i
selected_menu = menus[order -  1]
puts "選択されたメニュー: #{selected_menu.name}"
puts "お会計は#{selected_menu.price}vndです"
