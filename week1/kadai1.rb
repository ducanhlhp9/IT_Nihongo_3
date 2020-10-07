print '年を入力してください: '
year = gets.to_i
if year >= 1896
  if year % 4 != 0
    puts "#{year} 年にオリンピックはありません"
  elsif year == 1916 || year == 1940 || year == 1944
    puts " #{year} 年にオリンピックは開催されませんでした"
  elsif year == 2020
    puts "コロナウイルスので　#{year} にオリンピックは行うことができません"
  else
    puts "#{year}年にオリンピックは行うことができます"
  end

else
  puts "#{year} 年にオリンピックはまだありません"
end
