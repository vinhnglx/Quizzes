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
end

