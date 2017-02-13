require 'helper'

class TestQuestionCollection < MiniTest::Test
  def test_returns_list_of_questions
    questions = [Question.new]

    question_collection = QuestionCollection.new(questions: questions)
    assert_equal(1, question_collection.data.size)
  end
end
