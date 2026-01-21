class MyText <Object
  def initialize(text)
    @text = text
  end

  # overriding method
  def upcase
    
    "-------" + @text.upcase + "---------"
  end

end

t = MyText.new("hello karthik")
puts MyText.ancestors
puts t.upcase
