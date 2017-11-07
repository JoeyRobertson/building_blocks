def caesar_cipher (string, number)
  caesar_string = ""

  string.scan (/./) do |i|
    if ("a".."z").include? (i.downcase)
      number.times {i = i.next}
    end
    caesar_string << i[-1]
  end

  return caesar_string
end

puts "Please enter a word or phrase"
phrase = gets
puts "Please enter a key"
key = gets.to_i

puts caesar_cipher(phrase, key)
