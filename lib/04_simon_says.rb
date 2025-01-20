def echo (string) 
  string
end
def shout(string)
  string.upcase
end
def repeat(string,int=2 )
  ([string] * int).join(' ')
end
def start_of_word(string, x)
  string.slice(0,x)
end
def first_word(string)
  string.split(' ').first
end
def titleize(string)
  excluded_words = ["and", "the"]
  first_the_encountered = false

  capitalized_string = string.split.map do |word|
    if word == "the" && !first_the_encountered
      first_the_encountered = true
      word.capitalize
    elsif excluded_words.include?(word)
      word
    else
      word.capitalize
    end
  end.join(' ')

  capitalized_string
end
