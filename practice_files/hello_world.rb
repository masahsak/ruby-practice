## 先ずは動くことを確認するためのファイル

# 文字列
puts 'Hello World!'

# 計算 => 他の言語と同じ
puts 5 + 8
puts 5 - 8
puts 5 * 8
puts 5 / 8
puts 5 % 8
puts 5 ** 2

# 文字列結合
puts 'Hello' + ' ' + 'World' + '!'

# 文字列と数字の結合　=> 数字と文字列は直接結合できないので、#{}か.to_sを使用する
puts 3.to_s + 'years'
puts "#{3}years"

