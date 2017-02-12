require 'helper'

class TestMadLib < Minitest::Test

  class MadLib
    def initialize
    end

    def questions
      [
        "question_1",
        "question_2"
      ]
    end
  end

  def test_init_questions
    mad_lib = MadLib.new

    assert(1, mad_lib.questions)
  end

  def test_count_of_questions
    mad_lib = MadLib.new

    assert_equal(2, mad_lib.questions.count)
  end

end

