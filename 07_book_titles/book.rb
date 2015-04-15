class Book
public

  def title=(x)
    no_words=%w{and an of the in a}
    yes_words=%w{i}
    words=x.split

    stack = []

    words.each do |w|
      if yes_words.include?(w)
        stack << w.capitalize
      elsif no_words.include?(w)
        stack << w.downcase
      else
        stack << w.capitalize
      end
    end
    stack[0] = stack[0].capitalize
    @t=stack.join(" ")
  end

  def title
    @t
  end
end
