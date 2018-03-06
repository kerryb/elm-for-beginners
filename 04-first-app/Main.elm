module Main exposing (main)

import Html exposing (Html, beginnerProgram, div, h3, button, text)
import Html.Attributes exposing (type_)
import Html.Events exposing (onClick)


-- model


type alias Model =
    Int


initModel : Model
initModel =
    0



-- update


type Msg
    = AddCalorie
    | Clear


update : Msg -> Model -> Model
update msg model =
    case msg of
        AddCalorie ->
            model + 1

        Clear ->
            0



-- view


view : Model -> Html Msg
view model =
    div []
        [ h3 [] [ text ("Total calories: " ++ (toString model)) ]
        , button [ type_ "button", onClick AddCalorie ] [ text "Add" ]
        , button [ type_ "button", onClick Clear ] [ text "Clear" ]
        ]


main =
    beginnerProgram { model = initModel, update = update, view = view }
