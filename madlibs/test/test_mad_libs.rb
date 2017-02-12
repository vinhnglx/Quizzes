require 'helper'

class TestMadLib < Minitest::Test

  class MadLib
    def initialize
    end

    def questions
      []
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

