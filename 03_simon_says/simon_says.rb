def start_of_word(word, len)
  word[0, len]
end

def shout(word)
  word.upcase
end

def echo(word)
  word
end

def word_not_little(word)
  littles = %w( the over and )
  !littles.include?(word)
end

def titleize(w)
  arr = w.split
  arr.map! do |a|
    if word_not_little(a)
      a.capitalize!
    else
      a
    end
  end
  arr.first.capitalize!
  arr.join(' ')
end

def repeat(w, count = 2)
  stuff = []
  (0...count).each do
    stuff << w
  end
  stuff.join(' ')
end

def first_word(s)
  s.split(' ').first
end
