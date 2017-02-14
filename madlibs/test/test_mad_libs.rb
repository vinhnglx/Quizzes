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
    array_questions = [Question.new(content: "Hello ((noun))")]
    questions = QuestionCollection.new(questions: array_questions)

    mad_libs = MadLib.new(questions.data)

    mad_libs.display

    assert_equal("Hello world", mad_libs.finish(noun: "world"))


    array_questions_1 = [Question.new(content: "Hello ((noun)). I wanna ((action)) with you")]
    questions_1 = QuestionCollection.new(questions: array_questions_1)

    mad_libs_1 = MadLib.new(questions_1.data)

    mad_libs_1.display

    assert_equal("Hello Vincent. I wanna play with you", mad_libs_1.finish(noun: "Vincent", action: "play"))

    assert_raises(InCorrectAnswer) {  mad_libs_1.finish(noun: "Vincent", action: "play", action2: "babab")}
  end
end

