## 繰り返し処理についての学習

# each
# => 配列やハッシュなどの要素数分くりかえすときに使用する
puts "------each（配列）の出力-----------"

array = ["a", "b", "c", "d",]

# 通常
array.each do |str|
    puts str
end

puts "---"

# 中括弧版
array.each { |str|
    puts str
}

puts "---"

# 一行版
array.each { |str| puts str }


puts "------each（ハッシュ）の出力-----------"
# 配列の場合
hash = {
    name: "ruby",
    age: "30"
}

hash.each do |key, value|
    puts "#{key}: #{value}"
end

# times
# => 指定回数分同じ処理を繰り返したいときに使う。
# => 配列やハッシュの操作は.eachでいいので、リトライ制御のために固定回数分繰り返すときに使えそう
puts "------timesの出力-----------"

RETRY_COUNT = 3

RETRY_COUNT.times do |i| # iは0開始 （省略可能）
    puts "#{i + 1}回目の処理"
end


# while
# => 条件式を満たすまでループしてくれる
puts "------whileの出力-----------"

MAX_COUNT = 5
i = 0

while i < MAX_COUNT do
    puts "#{i + 1}回目の処理"
    i += 1
end


# upto
# => 指定した開始から終了まで1ずつ増やしながら処理を行ってくれる。
puts "------uptoの出力-----------"

1.upto(5) do |i|
    puts "#{i}つ目の処理"
end


# downto
# => 指定した開始から終了まで1ずつ減らしながら処理を行ってくれる。
puts "------downtoの出力-----------"

5.downto(1) do |i|
    puts "#{i}つ目の処理"
end

# step
# => 指定した開始から終了まで指定した分加算ながら処理を行ってくれる。
puts "------stepの出力-----------"

0.step(10,2) do |i|
    puts "#{i}つ目の処理"
end


# loop
# => ブロックの中身を無限ループしてくれる。
# => breakで終了制御をしながら使用する。
# => nextで後続を回避して次の繰り返し処理に進めることができる（javaやjavascriptのcontinue文）
# => （！）rubyではbreakやnextの後ろのその条件を書くことができるらしい。（next if number.even?）
# => （！）break,next単体でも使用できるので、条件式が複雑になる場合はifの中で書いた方が良さそう（条件をメソッドかもできるので）
puts "------loopの出力-----------"

counter = 0
loop do
    # 1~10までの奇数のみ出力
    counter += 1
    break if counter > 9
    next if counter.even?
    # 条件式が複雑な場合は↓で書いた方が良さそう
    # if counter > 9
    #     break
    # end
    # if counter.even?
    #     next
    # end
    puts "counter: #{counter}"
end

# map,collect
# => 配列に対して同じ処理を実行した新しい配列を作成する。（javascriptのmap、javaのstream().map().collect()と同じ）
puts "------mapの出力-----------"

num_array = [1, 2, 3, 4, 5]
squared_num_array = num_array.map {|n| n ** 2} # 2乗
puts squares_num_array.to_s