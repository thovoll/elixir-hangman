defmodule Hangman do
  # Implicitly names alias "Game"
  alias Hangman.Game

  defdelegate new_game(), to: Game
  defdelegate tally(game), to: Game
  defdelegate make_move(game, guess), to: Game
end
