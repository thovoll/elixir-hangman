defmodule Hangman do

  # Implicitly names alias "Game"
  alias Hangman.Game

  defdelegate new_game(), to: Game

end