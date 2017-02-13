require 'helper'

class TestQuestion < MiniTest::Test
  def test_init_question
    question = Question.new
    assert_instance_of Question, question
  end

  def test_set_content_question
    question = Question.new(content: "Question 1")

    assert_equal("Question 1", question.content)
  end
end
