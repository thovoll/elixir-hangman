defmodule Hangman.Game do

    # Implicitly names struct "Hangman.Game"
    defstruct(
        turns_left: 7,
        game_state: :initializing,
        letters:    [],
        used:       MapSet.new()
    )

    def new_game() do
        %Hangman.Game{ 
            letters: Dictionary.random_word |> String.codepoints  
        }
    end

    def make_move(game = %{ game_state: state }, _guess) when state in [:won, :lost] do
        { game, tally(game) }
    end

    def make_move(game, guess) do
        game = accept_move(game, guess, MapSet.member?(game.used, guess))
        { game, tally(game) }
    end

    def accept_move(game, _guess, _already_guessed = true) do
        Map.put(game, :game_state, :already_used)        
    end

    def accept_move(game, guess, _already_guessed) do
        Map.put(game, :used, MapSet.put(game.used, guess))
    end

    def tally(game) do
        123
    end

end
  