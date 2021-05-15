module Query exposing (main)

import Browser
import Html exposing (div, text)
import CustomScalarCodecs exposing (Id)
import Graphql.Operation exposing (RootQuery)
import Graphql.SelectionSet as SelectionSet exposing (SelectionSet)
import Contact.Interface

type alias Contact =
    { id : Id
    , email : String
    , firstname : String
    , lastname : String
    }


contactSelection : SelectionSet Contact Contact.Interface.Node
contactSelection =
    SelectionSet.map2 Contact
        Contact.id
        Contact.email
        Contact.firstname
        Contact.lastname

view model =
    div []
        [ text "Hello"
        ]

update msg model =
    0

main =
    Browser.sandbox
        {
            init = 0,
            update = update,
            view = view
        }
