require 'pry'

class String

  def sentence?
    if self[-1] == "."
      return true
    end
    false
  end

  def question?
    if self[-1] == "?"
      return true
    end
    false
  end

  def exclamation?
    if self[-1] == "!"
      return true
    end
    false
  end

  def count_sentences
    # binding.pry
    sentence_array = self.split(/[.?!]/)
    sentence_array = sentence_array.select {|sentence| sentence.length != 0}
    sentence_array.length
  end
end
