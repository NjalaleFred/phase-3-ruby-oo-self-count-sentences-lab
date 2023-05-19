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
    count_sentence = self.split(/[.?!]/)
    sentence_count = count_sentence.reject! {|string| string.empty?}

  if sentence_count == true
    sentence_count.count
  else
    count_sentence.count
  end
  end
end