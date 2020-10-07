# class Menu
#   attr_accessor :name
#   attr_accessor :price
#   # get_total_priceメソッドを定義してください
#   def total_price
#     print '整数を入力してください '
#     while n = begin begin Integer(gets.chomp) rescue  '' end
#     end
#       if n.is_a? Integer
#         if n < 3
#           total = n * price
#         elsif n >= 3
#           total = n * price - 10_000
#           break
#         end
#       else
#         print "整数じゃない、もう一度整数を入力してください \n"
#       end
#     end
#     puts "#{name} #{total}vnd"
#   end
#   end
#
# menu1 = Menu.new
# menu1.name = 'Phở'
# menu1.price = 30_000
# menu1.total_price
class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = price * count
    total_price -= 10_000 if count >= 3
    "#{name} #{total_price}vnd"
  end
end
menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000
# menu1に対してget_total_priceメソッドを呼び出してください
puts menu1.get_total_price(4)
