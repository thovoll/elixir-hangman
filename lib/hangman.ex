defmodule Dictionary do
  def word_list do
    contents = File.read!("assets/words.txt")
    list = String.split(contents, ~r/\n/)
  end
  def random_word do
    Enum.random(word_list)
  end
end
