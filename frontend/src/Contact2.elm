module Contact2 exposing (main)

import Browser
import Html exposing (div, text)
import Graphql.Http
import Graphql.Operation exposing (RootQuery)
import Graphql.SelectionSet as SelectionSet exposing (SelectionSet)
import RemoteData exposing (RemoteData)
import Contact.Object
import Contact.Object.Contact
import Contact.Object as Contact
import Contact.Scalar
import Contact.Query as Query

type alias Response =
    MyContact
    -- Contact.Object.Contact

type Msg
    = GotResponse Model

type alias Model =
    RemoteData (Graphql.Http.Error Response) Response

type alias MyContact = { firstname : String }

contactSelection : SelectionSet MyContact Contact.Object.Contact
contactSelection =
    SelectionSet.map MyContact
        Contact.Object.Contact.firstname

query : SelectionSet (Maybe Response) RootQuery
query =
    Query.contactById { id = Contact.Scalar.Uuid "1de9c987-08ab-32fe-e218-89c124cd0001"} contactSelection

makeRequest : Cmd Msg
makeRequest =
    query
        |> Graphql.Http.queryRequest "http://127.0.0.1:5000/graphql"
        |> Graphql.Http.send (RemoteData.fromResult >> GotResponse)

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
