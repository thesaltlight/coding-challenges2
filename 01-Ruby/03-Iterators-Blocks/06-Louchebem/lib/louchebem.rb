def louchebem(word)
  random_suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"].sample
  # word with one letter returns itself
  return word if word.length == 1
# split the word into an array of characters
  if vowel?(word[0])
    # word beginning with vowel
    "l#{word}#{random_suffix}" # word beginning with vowel
  else
    # word beginning with 1 or more consonants
    first_vowel_index = word.chars.index { |letter| vowel? letter }
    beginning = word[0...1]
    ending = word[1...word.size]
    "l#{ending}#{beginning}#{random_suffix}"
  end
end

def vowel?(letter)
  %w[a e i o u].include? letter
end

def louchebemize(sentence)
  # read http://rubular.com/ bottom regex quick reference for help on regexes
  result_elements = []
  words = sentence.split(/\b/) # Split sentence into words with "any word boundary"
  words.each do |word|
    if word =~ /\W/ # \W stands for "any non-word character"
      result_elements << word # Keep non-word parts as-is
    else
      result_elements << louchebemize_word(word)
    end
  end
  result_elements.join # Build result sentence by joining tokens with space in-between.
end
