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
    if self.length == 0
      return 0
    else
      sentences = self.split(/[.?!]/)
      mod = sentences.delete_if {|sen| sen == "" || sen == " "  }
      return mod.count
    end
  end
end

# string = "one. two. three?"
# string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
# string.count_sentences
