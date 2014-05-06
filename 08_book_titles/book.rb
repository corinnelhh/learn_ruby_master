class Book
  attr_accessor :title
  
  def title
    string_array = @title.split.to_a
    titleized_array = []
    little_words = %w(a an the in on under down out over by with for at of to on off and or nor but)
    string_array.each_with_index do |stringelement, index| 
      if index == 0 || index == -1 || !little_words.include?(stringelement)
        titleized_array.push stringelement.capitalize
      else
        titleized_array.push stringelement
      end
    end
    @title = titleized_array.join(" ").to_s
  end
end

