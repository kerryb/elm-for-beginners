module Main exposing (main)

import Html exposing (Html, beginnerProgram, div, h3, input, button, text)
import Html.Attributes exposing (type_)
import Html.Events exposing (onClick, onInput)


-- model


type alias Model =
    { caloriesToAdd : Int
    , total : Int
    }


initModel : Model
initModel =
    { caloriesToAdd = 0
    , total = 0
    }



-- update


type Msg
    = UpdateCaloriesToAdd String
    | AddCalories
    | Clear


update : Msg -> Model -> Model
update msg model =
    case msg of
        UpdateCaloriesToAdd caloriesToAdd ->
            { model | caloriesToAdd = Result.withDefault 0 (String.toInt caloriesToAdd) }

        AddCalories ->
            { model | total = model.total + model.caloriesToAdd }

        Clear ->
            { model | total = 0 }



-- view


view : Model -> Html Msg
view model =
    div []
        [ h3 [] [ text ("Total calories: " ++ (toString model.total)) ]
        , input [ type_ "number", onInput UpdateCaloriesToAdd ] []
        , button [ type_ "button", onClick (AddCalories) ] [ text "Add" ]
        , button [ type_ "button", onClick Clear ] [ text "Clear" ]
        ]


main =
    beginnerProgram { model = initModel, update = update, view = view }
