class Dictionary 

  def initialize this_dictionary = {}
    @my_dictionary = this_dictionary
  end
  
  def entries 
    @my_dictionary
  end
  
  def keywords
    @my_dictionary.keys.sort
  end
  
  def add words 
    if words == words.to_s
      @my_dictionary[words] = nil
    else
    words.each {|key, meaning| @my_dictionary[key] = meaning}
    end
  end
  
  def include? tester
    @my_dictionary.has_key?(tester)
  end
  
  def find tester
    @output = {}
    @my_dictionary.each do |key, meaning| 
      if /#{tester}/ =~ key 
        @output[key]=meaning 
        end
      end
    @output
  end
  
  def printable 
    @my_dictionary.sort.map{|key, meaning| '[' + key +'] ' + '"'+ meaning + '"'}.join("\n")
  end

end