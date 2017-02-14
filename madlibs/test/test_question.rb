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

  def test_count_the_place_holder
    question = Question.new(content: "I had a ((adjective)) sandwich for lunch today.")

    assert_equal(1, question.place_holders.size)

    question_1 = Question.new(content: "Do you like ((language))? This language is so ((adjective)) when running!!!")

    assert_equal(2, question_1.place_holders.size)
  end
end
