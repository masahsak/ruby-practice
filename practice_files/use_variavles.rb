## 変数についての学習

# RubyではJavaやTypescriptのような型を意識しない

# 変数 
# => 数字から始まる変数は使えない. また変数名はスネークケースが慣習
# => 定数は他の言語と同じで大文字を使用する
n = nil # nullとかundefined的なもの
your_name = "hoge-hoge" # 文字列
your_age = 10 # 数値
array = [1, 2, 3] # 配列
hash = {
    "one" => 1,
    "two" => 2,
    "three" => 3
} # 連想配列

puts n
puts your_name
puts your_age
puts hash

# 定数
# => 定数は他の言語と同じで大文字を使用する
CONSTANTS = "constants"

puts CONSTANTS


# 範囲オブジェクト
# 範囲を表すオブジェクトを作成することができる
puts (1..10).to_a.to_s # .2つは終端を含む
puts (1...10).to_a.to_s # .3つは終端を含まない