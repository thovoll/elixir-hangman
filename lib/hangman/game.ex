defmodule Hangman.Game do

    # Implicitly names struct "Hangman.Game"
    defstruct(
        turns_left: 7,
        game_state: :initializing,
        letters: []
    )

    def new_game() do
        %Hangman.Game{ 
            letters: Dictionary.random_word |> String.codepoints  
        }
    end

end
  