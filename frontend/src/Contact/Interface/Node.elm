-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Contact.Interface.Node exposing (..)

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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onQuery : SelectionSet decodesTo RootQuery
    , onContact : SelectionSet decodesTo Contact.Object.Contact
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Contact.Interface.Node
fragments selections____ =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "Query" selections____.onQuery
        , Object.buildFragment "Contact" selections____.onContact
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onQuery = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onContact = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| A globally unique identifier. Can be used in various places throughout the system to identify this single value.
-}
nodeId : SelectionSet Contact.ScalarCodecs.Id Contact.Interface.Node
nodeId =
    Object.selectionForField "ScalarCodecs.Id" "nodeId" [] (Contact.ScalarCodecs.codecs |> Contact.Scalar.unwrapCodecs |> .codecId |> .decoder)
