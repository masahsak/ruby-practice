## 条件分岐についての学習

# if文
# => 一般的な分岐
puts "------if文の出力-----------"

if_first_number = 2
if_second_number = 3

if if_first_number < if_second_number
    puts "first_number(#{if_first_number})はsecond_number(#{if_second_number})よりも小さい"
elsif if_first_number == if_second_number
    puts "first_number(#{if_first_number})はsecond_number(#{if_second_number})と等しい"
else 
    puts "first_number(#{if_first_number})はsecond_number(#{if_second_number})よりも大きい"
end


# unless文
# => esif的なものは存在せず、elseのみ
# => 読みづらくなるので、ifで事足りる場合は使わない方が良さそう。
# => !で否定するだけなら変わりにunlessをつかうのはありかも。
puts "------unless文の出力-----------"

unless_number = 2

unless unless_number.zero?
    puts "unless_number(#{unless_number})は0ではない"
else 
    puts "unless_number(#{unless_number})は0である"
end


# case文
# => javascriptやjavaのswitch文と同じ。（ifとの使い分けも同じで良さそう）
# => 真となる条件が見つかった場合はそこでcase文が終了するので、break等の記載はいらない
puts "------case文の出力-----------"

language = "ruby"

case language
when "javascript"
    puts "言語はjavascriptです"
when "java"
    puts "言語はjavaです"
when "ruby"
    puts "言語はrubyです"
else
    puts "言語を判断できませんでした"
end
