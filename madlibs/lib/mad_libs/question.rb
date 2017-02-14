class Question
  attr_reader :content
  def initialize(content: content)
    @content = content
  end

  def place_holders
    [1]
  end
end
