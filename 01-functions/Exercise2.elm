module Main exposing (..)

import Html exposing (text)


uppercaseLongName name =
    if String.length name >= 10 then
        String.toUpper name
    else
        name


name =
    "Kerry Buckley"


main =
    Html.text (uppercaseLongName name ++ " – name length " ++ toString (String.length name))
