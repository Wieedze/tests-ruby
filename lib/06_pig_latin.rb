def translate(phrase)
  phrase.split.map do |word|
    translate_word(word)
  end.join(' ')
end

def translate_word(word)
  if word =~ /^[aeiou]/i 
    word + "ay"
  elsif word =~ /^sch/i
    word[3..-1] + "schay"
  elsif word =~ /^qu/i
    word[2..-1] + "quay"
  elsif word =~ /^[^aeiou]+qu/i
    first_consonants = word.match(/^[^aeiou]+qu/i)[0]
    rest_of_word = word[first_consonants.length..-1]
    rest_of_word + first_consonants + "ay"
  elsif word =~ /^[^aeiou]+/i
    first_consonants = word.match(/^[^aeiou]+/i)[0]
    rest_of_word = word[first_consonants.length..-1]
    rest_of_word + first_consonants + "ay"
  else
    word + "ay"
  end
end
