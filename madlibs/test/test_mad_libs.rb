require 'helper'

class TestMadLibs < MiniTest::Test
  def setup
    @questions_1 = [Question.new(content: "Question 1"),
                    Question.new(content: "Question 2"),
                    Question.new(content: "Question 3")]

    @questions_2 = [Question.new(content: "Hello ((noun))")]
    @questions_3 = [Question.new(content: "Hello ((noun)). I wanna ((action)) with you")]
  end

  def test_display_question
    mad_libs = MadLib.new(@questions_1)

    question = mad_libs.display

    assert_includes(["Question 1", "Question 2", "Question 3"], question)
  end

  def test_finish_question
    mad_libs = MadLib.new(@questions_2)
    mad_libs.display

    assert_equal("Hello world", mad_libs.finish(noun: "world"))


    mad_libs_1 = MadLib.new(@questions_3)
    mad_libs_1.display

    assert_equal("Hello Vincent. I wanna play with you", mad_libs_1.finish(noun: "Vincent", action: "play"))
    assert_raises(InCorrectAnswer) {  mad_libs_1.finish(noun: "Vincent", action: "play", action2: "babab")}
  end
end

