-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Contact.Object.ContactsEdge exposing (..)

import Contact.InputObject
import Contact.Interface
import Contact.Object
import Contact.Scalar
import Contact.ScalarCodecs
import Contact.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| A cursor for use in pagination.
-}
cursor : SelectionSet (Maybe Contact.ScalarCodecs.Cursor) Contact.Object.ContactsEdge
cursor =
    Object.selectionForField "(Maybe ScalarCodecs.Cursor)" "cursor" [] (Contact.ScalarCodecs.codecs |> Contact.Scalar.unwrapCodecs |> .codecCursor |> .decoder |> Decode.nullable)


{-| The `Contact` at the end of the edge.
-}
node :
    SelectionSet decodesTo Contact.Object.Contact
    -> SelectionSet (Maybe decodesTo) Contact.Object.ContactsEdge
node object____ =
    Object.selectionForCompositeField "node" [] object____ (identity >> Decode.nullable)