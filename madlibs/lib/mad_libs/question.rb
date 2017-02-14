class Question
  attr_reader :content

  REGEX = /\(\(([^\)]+)\)/.freeze

  def initialize(content: content)
    @content = content
  end

  def place_holders
    content.scan(REGEX).map {|k, v| [k => ""]}.flatten
  end
end
