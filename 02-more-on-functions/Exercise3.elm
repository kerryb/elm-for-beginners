module Main exposing (..)

import Html exposing (text)


wordcount =
    (String.split " ") >> List.length


string =
    "The quick brown fox"


main =
    Html.text (string ++ ": " ++ (toString (wordcount string)))
