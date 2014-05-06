
def echo phrase
    phrase.downcase
end

def shout phrase
  phrase.upcase
end

def repeat phrase, num = 2
  output = phrase
  count = 1
    while count < num 
        output = output + " " + phrase 
        count += 1
    end
  output
end

def start_of_word word, num = 1
  num = num - 1
  word_array = word.chars.to_a
  word_array[0 .. num].join.to_s
end

def first_word string
  string_array = string.split.to_a
  string_array[0]
end

def titleize string
  string_array = string.split.to_a
  titleized_array = []
  little_words = %w(a an the in on under down out over by with for at of to on off and or nor but)
  string_array.each_with_index do |stringelement, index| 
    if index == 0 || index == -1 || !little_words.include?(stringelement)
    titleized_array.push stringelement.capitalize
    else
    titleized_array.push stringelement
    end
  end
  titleized_array.join(" ").to_s
end

