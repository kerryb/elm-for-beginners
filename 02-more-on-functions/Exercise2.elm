module Main exposing (..)

import Html exposing (text)


(~=) str1 str2 =
    (String.left 1 str1) == (String.left 1 str2)


main =
    Html.text
        ("Foo, Bar: "
            ++ (toString ((~=) "Foo" "Bar"))
        )
