require 'mad_libs/question'
require 'mad_libs/question_collection'

class MadLib
  attr_reader :questions

  def initialize(questions)
    @questions = questions
  end

  def display
    questions.sample.content
  end
end
