# implementation of the Book Class
class Book
  public

  def title=(x)
    specials = %w(and an of the in a)
    words = x.split
    stack = []
    words.each do |w|
      w.capitalize! unless specials.include?(w)
      stack << w
    end
    # override specials logic with first word
    stack[0] = stack[0].capitalize
    @t = stack.join(' ')
  end

  def title
    @t
  end
end
