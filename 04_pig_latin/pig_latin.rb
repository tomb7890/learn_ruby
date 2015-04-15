def translate_word(word)
  vowels = %w{ a e i o u }

  if word[0..1] == "qu" then
    z = "#{word[2..-1]}quay"
    return z
  end

  if word[1..2] == 'qu' then
    if !vowels.include?(word[0])
      z = "#{word[3..-1]}#{word[0]}quay"
      return z
    end
  end

  clen=0
  (0...3).each do |i|
    if !vowels.include?(word[i])
      clen = clen + 1
    else
      break
    end
  end
  if vowels.include?(word[0])
    z = "#{word}ay"
  else
    z = "#{word[clen..-1]}#{word[0,clen]}ay"
  end
  z


end


def translate(s)
  words = s.split
  s1 = ''
  if words.length > 1
    stuff = []
    words.each do |w|
      stuff << translate_word(w)
    end
    s1 = stuff.join(" ")
  else
    s1= translate_word(s)
  end
  s1
end
