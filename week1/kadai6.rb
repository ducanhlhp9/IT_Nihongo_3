puts "学生の人数を入力してください \n"
n = (gets.chomp.to_i - 1)
variable1=Array.new(n)
variable2=Array.new(n)

for i in (0..n)
  puts "#{i + 1} 番目の学生の名前は何ですか? \n"
  puts "名前 >"
  variable1[i]=gets.chomp
  puts "#{i + 1} 番目の学生の学生番号は何ですか? \n"
  puts "学生番号 >"
  variable2[i]=gets.chomp
end
puts "-------------名簿---------------"
for i in (0..n)
  puts "学生番号 #{variable2[i]} - 名前 #{variable1[i]}"
end
puts "-------------------------------"
