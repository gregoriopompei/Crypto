puts "Welcome, insert the operation ID: \n[1 = Generate]\n[2 = Encrypt]\n[3 = Decrypt]"
operation_id = gets.chomp.to_i

case operation_id
when 1
new_key = Array.new
6.times do
  x = rand(10..99) 
  new_key << x
  x = 0
end

puts "This is your new key: #{new_key.join(" ")}"

when 2
  ec_arr = Array.new
  puts "Insert key:"
  key = gets.chomp
  arrkey = key.split(" ").map(&:to_i)
  ab_ec = {"a" => "#{arrkey[0]}a", "b" => "#{arrkey[0]}b", "c" => "#{arrkey[0]}c", "d" => "#{arrkey[0]}d", "e" => "#{arrkey[0]}e", "f" => "#{arrkey[0]}f", "g" => "#{arrkey[1]}a", "h" => "#{arrkey[1]}b", "i" => "#{arrkey[1]}c", "j" => "#{arrkey[1]}d", "k" => "#{arrkey[1]}e", "l" => "#{arrkey[1]}f", "m" => "#{arrkey[2]}a", "n" => "#{arrkey[2]}b", "o" => "#{arrkey[2]}c", "p" => "#{arrkey[2]}d", "q" => "#{arrkey[2]}e", "r" => "#{arrkey[2]}f", "s" => "#{arrkey[3]}a", "t" => "#{arrkey[3]}b", "u" => "#{arrkey[3]}c", "v" => "#{arrkey[3]}d", "w" => "#{arrkey[3]}e", "x" => "#{arrkey[3]}f", "y" => "#{arrkey[4]}a", "z" => "#{arrkey[4]}b", "." => "#{arrkey[4]}c", "," => "#{arrkey[4]}d", ":" => "#{arrkey[4]}e", " " => "#{arrkey[4]}f"}
  puts "Insert text:"
  text = gets.chomp
  dtext = text.downcase
  txtarr = dtext.split("")
  txtarr.each do |b|
    ec_arr << ab_ec[b]
  end
  if ec_arr.empty?
    puts "I can't encrypt the entered text yet, I'm sorry."
  else
    puts ec_arr.join
  end

when 3 
  dc_arr = Array.new
  puts "Insert key:"
  key = gets.chomp
  arrkey = key.split(" ").map(&:to_i)
  ab_dc = {"#{arrkey[0]}a" => "a", "#{arrkey[0]}b" => "b", "#{arrkey[0]}c" => "c", "#{arrkey[0]}d" => "d", "#{arrkey[0]}e" => "e", "#{arrkey[0]}f" => "f", "#{arrkey[1]}a" => "g", "#{arrkey[1]}b" => "h", "#{arrkey[1]}c" => "i", "#{arrkey[1]}d" => "j", "#{arrkey[1]}e" => "k", "#{arrkey[1]}f" => "l", "#{arrkey[2]}a" => "m", "#{arrkey[2]}b" => "n", "#{arrkey[2]}c" => "o", "#{arrkey[2]}d" => "p", "#{arrkey[2]}e" => "q", "#{arrkey[2]}f" => "r", "#{arrkey[3]}a" => "s", "#{arrkey[3]}b" => "t", "#{arrkey[3]}c" => "u", "#{arrkey[3]}d" => "v", "#{arrkey[3]}e" => "w", "#{arrkey[3]}f" => "x", "#{arrkey[4]}a" => "y", "#{arrkey[4]}b" => "z", "#{arrkey[4]}c" => ".", "#{arrkey[4]}d" => ",", "#{arrkey[4]}e" => ":", "#{arrkey[4]}f" => " ", }
  puts "Insert text:"
  text = gets.chomp
  dtext = text.downcase
  txtarr = dtext.scan(/.../)
  txtarr.each do |b|
    dc_arr << ab_dc[b]
  end

  if dc_arr.empty?
    puts "I couldn't decrypt the entered text, I'm sorry."
  else
    puts dc_arr.join
  end

else 
  puts "Invalid operation ID: #{operation_id}"
end
