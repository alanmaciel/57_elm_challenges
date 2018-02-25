module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


-- Model
type alias Model =
  { name : String }


model : Model
model =
  { name = "" }

-- Update

type Msg
  = Greet String


update : Msg -> Model -> Model
update msg model =
  case msg of
    Greet newName ->
      { model | name = newName }


-- View


view : Model -> Html Msg
view model =
  div [ ]
    [ h1[]
        [ text "01 - Hello"]
    , p []
        [ text ("Hello, " ++ model.name ++ " nice to meet you!")]
    , input
        [ type_ "text"
        , placeholder "What is your name?"
        , onInput Greet
        ]
        []
     , div[][ text (toString model) ]
    ]
-- label What is your name
-- textbox:

main : Program Never Model Msg
main =
  Html.beginnerProgram
    { model = model
    , update = update
    , view = view
    }
