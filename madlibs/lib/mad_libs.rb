require 'mad_libs/question'
require 'mad_libs/question_collection'

class InCorrectAnswer < StandardError
end

class MadLib
  attr_reader :questions, :question

  def initialize(questions)
    @questions = questions
  end

  def display
    @question = questions.sample
    @question.content
  end

  def finish(words = {})
    if words.size == question.place_holders.size
      content = question.content
      words.collect{|k, v| [k.to_s, v]}.to_h.each { |k, v| content[k] &&= v }
      content.gsub(/[()]/, "")
    else
      raise InCorrectAnswer
    end
  end
end
