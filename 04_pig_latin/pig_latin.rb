def is_a_vowel(c)
  vowels = %w( a e i o u )
  vowels.include?(c)
end

def is_a_consonant(c)
  !is_a_vowel(c)
end

def conson_run_len(word)
  crl = 0
  (0...3).each do |i|
    if is_a_consonant(word[i])
      crl += 1
    else
      break
    end
  end
  crl
end

def starts_with_consonants(word)
  conson_run_len(word) > 0
end

def starts_with_vowel(word)
  is_a_vowel(word[0])
end

def translate_word_with_vowel(word)
  "#{word}ay"
end

def translate_word_with_consontants(word)
  crl = conson_run_len(word)
  "#{word[crl..-1]}#{word[0, crl]}ay"
end

def starts_with_qu(word)
  word[0..1] == 'qu'
end

def translate_qu_as_phoneme(word)
  "#{word[2..-1]}quay"
end

def qu_precedes_consonant(word)
  word[1..2] == 'qu' unless is_a_vowel(word[0])
end

def translate_qu_as_consonant(word)
  "#{word[3..-1]}#{word[0]}quay"
end

def translate_word(word)
  case true
  when qu_precedes_consonant(word) then
    translate_qu_as_consonant(word)
  when starts_with_qu(word) then translate_qu_as_phoneme(word)
  when starts_with_vowel(word) then translate_word_with_vowel(word)
  when starts_with_consonants(word) then
    translate_word_with_consontants(word)
  end
end

def translate(phrase)
  words = phrase.split
  s1 = ''
  if words.length > 1
    words.map! { |w| translate_word(w) }
    s1 = words.join(' ')
  else
    s1 = translate_word(phrase)
  end
  s1
end
