class Book
  def title
    @title
  end

  def title=(title)
    not_words = %w(and if a an the of in)
    @title = title.split.each_with_index.map do |word, i|
      if !not_words.include?(word) || i == 0
        word.capitalize
      else
        word
      end
       #puts title ##why does a puts here affect the code??
    end.join(" ")#what variable name is being returned here??
#puts @title## also here??
  end
end

