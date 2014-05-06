def translate phrase
  ind_words = phrase.split(' ').to_a
  translation = []
  ind_words.each do |word|
    letters = word.to_s.chars.to_a 
    ending = []
      while !letters.first.match(/\A[aeiou]/) || ending[-1].to_s + letters.first.to_s == 'qu'
          ending.push letters.first
          letters.shift
      end
     translation.push "#{letters.join}#{ending.join}ay"
  end
  translation.join(" ").to_s
end