require 'helper'

class TestMadLibs < MiniTest::Test
  def test_display_question
    questions = QuestionCollection.new(
                  questions: [
                    Question.new(content: "Question 1"),
                    Question.new(content: "Question 2"),
                    Question.new(content: "Question 3")
                  ]
                )

    mad_libs = MadLib.new(questions.data)

    question = mad_libs.display

    assert_includes(["Question 1", "Question 2", "Question 3"], question)
  end

  def test_finish_question
    questions = QuestionCollection.new(questions: [Question.new(content: "Hello ((noun))")])

    mad_libs = MadLib.new(questions.data) 

    question = mad_libs.display

    assert_equal("Hello world", mad_libs.finish("world"))
  end
end

