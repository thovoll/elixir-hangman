defmodule Lists do

    def len([]),      do: 0
    def len([h | t]), do: 1 + len(t)

    def sum([]),      do: 0
    def sum([h | t]), do: h + sum(t)

    def double([]),      do: []
    def double([h | t]), do: [ 2*h | double(t) ]

    def square([]),      do: []
    def square([h | t]), do: [ h*h | square(t) ]

    # Lists.map([1,2,3], fn x -> x*x*x end)
    # Lists.map([1,2,3], &(&1*&1*&1))
    def map([], func), do: []
    def map([h | t], func), do: [ func.(h) | map(t, func) ]

end