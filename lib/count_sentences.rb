require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    one = self.gsub("?", ".")
    two = one.gsub("!", ".")
    three = two.gsub(";", ".")
    three.split(".").count
  end
end

binding.pry
