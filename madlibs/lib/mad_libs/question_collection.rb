class QuestionCollection
  attr_reader :data

  def initialize(questions: questions)
    @data = questions
  end
end
