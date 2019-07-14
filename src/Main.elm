import Browser
import Html exposing (Html, button, div, text, input)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)

fib x = 
  case x of 
    0 -> 1 
    1 -> 1 
    _ -> fib (x-1) + fib (x-2)


main =
  Browser.sandbox { init = init, update = update, view = view }

type Msg = Change String



type alias Model =
  { 
    content : String
  }

init : Model
init =
  { 
    content = ""
    }

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
      { model | content = newContent }


view : Model -> Html Msg
view model =
  div []
    [ input [ placeholder "Text to reverse", value model.content, onInput Change ] []
    , div [] [ text (String.fromInt (fib ( Maybe.withDefault 0 (String.toInt model.content) ))) ]
    ]