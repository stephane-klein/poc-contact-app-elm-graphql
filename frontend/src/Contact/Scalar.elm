-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Contact.Scalar exposing (Codecs, Cursor(..), Datetime(..), Id(..), Uuid(..), defaultCodecs, defineCodecs, unwrapCodecs, unwrapEncoder)

import Graphql.Codec exposing (Codec)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode
import Json.Decode as Decode exposing (Decoder)
import Json.Encode as Encode


type Cursor
    = Cursor String


type Datetime
    = Datetime String


type Id
    = Id String


type Uuid
    = Uuid String


defineCodecs :
    { codecCursor : Codec valueCursor
    , codecDatetime : Codec valueDatetime
    , codecId : Codec valueId
    , codecUuid : Codec valueUuid
    }
    -> Codecs valueCursor valueDatetime valueId valueUuid
defineCodecs definitions =
    Codecs definitions


unwrapCodecs :
    Codecs valueCursor valueDatetime valueId valueUuid
    ->
        { codecCursor : Codec valueCursor
        , codecDatetime : Codec valueDatetime
        , codecId : Codec valueId
        , codecUuid : Codec valueUuid
        }
unwrapCodecs (Codecs unwrappedCodecs) =
    unwrappedCodecs


unwrapEncoder :
    (RawCodecs valueCursor valueDatetime valueId valueUuid -> Codec getterValue)
    -> Codecs valueCursor valueDatetime valueId valueUuid
    -> getterValue
    -> Graphql.Internal.Encode.Value
unwrapEncoder getter (Codecs unwrappedCodecs) =
    (unwrappedCodecs |> getter |> .encoder) >> Graphql.Internal.Encode.fromJson


type Codecs valueCursor valueDatetime valueId valueUuid
    = Codecs (RawCodecs valueCursor valueDatetime valueId valueUuid)


type alias RawCodecs valueCursor valueDatetime valueId valueUuid =
    { codecCursor : Codec valueCursor
    , codecDatetime : Codec valueDatetime
    , codecId : Codec valueId
    , codecUuid : Codec valueUuid
    }


defaultCodecs : RawCodecs Cursor Datetime Id Uuid
defaultCodecs =
    { codecCursor =
        { encoder = \(Cursor raw) -> Encode.string raw
        , decoder = Object.scalarDecoder |> Decode.map Cursor
        }
    , codecDatetime =
        { encoder = \(Datetime raw) -> Encode.string raw
        , decoder = Object.scalarDecoder |> Decode.map Datetime
        }
    , codecId =
        { encoder = \(Id raw) -> Encode.string raw
        , decoder = Object.scalarDecoder |> Decode.map Id
        }
    , codecUuid =
        { encoder = \(Uuid raw) -> Encode.string raw
        , decoder = Object.scalarDecoder |> Decode.map Uuid
        }
    }
