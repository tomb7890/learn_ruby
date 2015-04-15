def start_of_word(word, len)
  word[0, len]
end

def shout(word)
  word.upcase  unless word.split.length > 1
  arr = word.split
  arr.map! do |a|
    if (a.length > 3) || (a == arr.first)
      a.upcase
    end
  end
  arr.join(" ")
end

def echo (word)
  word
end

def titleize (w, count=1)
  arr = w.split
  return w.capitalize unless arr.size > 1
  littles = %w{ the ddd over and }
  arr.map! do |a|
    if !littles.include?(a)
      a.capitalize!
    else
      a
    end
  end
  f = arr.first
  arr[0] = f.capitalize
  arr.join(" ")
end

def repeat(w, count=2)
  stuff = []
  (0...count).each do
    stuff << w
  end
  stuff.join(" ")
end

def first_word s
  s.split(" ").first
end
