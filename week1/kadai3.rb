p "第　１～１０大会のオリンピック一覧"
p "--------------------------------"
olympic = [
    {year: "1896",場所: "アテネ大会" } ,
    {year: "1900",場所: "パリ大会" } ,
    {year: "1904",場所: "セントルイス大会" } ,
    {year: "1908",場所: "ロンドン大会" } ,
    {year: "1912",場所: "ストックホルム大会" } ,
    {year: "1916",場所: "ベルリン大会",豆知識:"第一次世界大戦で中止" } ,
    {year: "1920",場所: "アントワープ大会" } ,
    {year: "1924",場所: "パリ大会",豆知識:"同じ都市での2回目の開初" } ,
    {year: "1928",場所: "アムステルダム大会大会" } ,
    {year: "1932",場所: "ロサンゼルス大会" } ,
]
olympic.each do |i|
  puts "#{i[:year]}年 #{i[:場所]}"

  if(i[:豆知識] != nil)
    puts "#{i[:豆知識]}"
  end
  puts "============================"
end