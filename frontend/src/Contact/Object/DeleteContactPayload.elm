-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Contact.Object.DeleteContactPayload exposing (..)

import Contact.Enum.ContactsOrderBy
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


{-| The exact same `clientMutationId` that was provided in the mutation input, unchanged and unused. May be used by a client to track mutations.
-}
clientMutationId : SelectionSet (Maybe String) Contact.Object.DeleteContactPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The `Contact` that was deleted by this mutation.
-}
contact :
    SelectionSet decodesTo Contact.Object.Contact
    -> SelectionSet (Maybe decodesTo) Contact.Object.DeleteContactPayload
contact object____ =
    Object.selectionForCompositeField "contact" [] object____ (identity >> Decode.nullable)


deletedContactId : SelectionSet (Maybe Contact.ScalarCodecs.Id) Contact.Object.DeleteContactPayload
deletedContactId =
    Object.selectionForField "(Maybe ScalarCodecs.Id)" "deletedContactId" [] (Contact.ScalarCodecs.codecs |> Contact.Scalar.unwrapCodecs |> .codecId |> .decoder |> Decode.nullable)


{-| Our root query field type. Allows us to run any query from our mutation payload.
-}
query :
    SelectionSet decodesTo RootQuery
    -> SelectionSet (Maybe decodesTo) Contact.Object.DeleteContactPayload
query object____ =
    Object.selectionForCompositeField "query" [] object____ (identity >> Decode.nullable)


type alias ContactEdgeOptionalArguments =
    { orderBy : OptionalArgument (List Contact.Enum.ContactsOrderBy.ContactsOrderBy) }


{-| An edge for our `Contact`. May be used by Relay 1.

  - orderBy - The method to use when ordering `Contact`.

-}
contactEdge :
    (ContactEdgeOptionalArguments -> ContactEdgeOptionalArguments)
    -> SelectionSet decodesTo Contact.Object.ContactsEdge
    -> SelectionSet (Maybe decodesTo) Contact.Object.DeleteContactPayload
contactEdge fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { orderBy = Absent }

        optionalArgs____ =
            [ Argument.optional "orderBy" filledInOptionals____.orderBy (Encode.enum Contact.Enum.ContactsOrderBy.toString |> Encode.list) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "contactEdge" optionalArgs____ object____ (identity >> Decode.nullable)
