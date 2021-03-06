-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Contact.Enum.ContactsOrderBy exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Methods to use when ordering `Contact`.
-}
type ContactsOrderBy
    = Natural
    | IdAsc
    | IdDesc
    | EmailAsc
    | EmailDesc
    | FirstnameAsc
    | FirstnameDesc
    | LastnameAsc
    | LastnameDesc
    | CreatedAtAsc
    | CreatedAtDesc
    | PrimaryKeyAsc
    | PrimaryKeyDesc


list : List ContactsOrderBy
list =
    [ Natural, IdAsc, IdDesc, EmailAsc, EmailDesc, FirstnameAsc, FirstnameDesc, LastnameAsc, LastnameDesc, CreatedAtAsc, CreatedAtDesc, PrimaryKeyAsc, PrimaryKeyDesc ]


decoder : Decoder ContactsOrderBy
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "NATURAL" ->
                        Decode.succeed Natural

                    "ID_ASC" ->
                        Decode.succeed IdAsc

                    "ID_DESC" ->
                        Decode.succeed IdDesc

                    "EMAIL_ASC" ->
                        Decode.succeed EmailAsc

                    "EMAIL_DESC" ->
                        Decode.succeed EmailDesc

                    "FIRSTNAME_ASC" ->
                        Decode.succeed FirstnameAsc

                    "FIRSTNAME_DESC" ->
                        Decode.succeed FirstnameDesc

                    "LASTNAME_ASC" ->
                        Decode.succeed LastnameAsc

                    "LASTNAME_DESC" ->
                        Decode.succeed LastnameDesc

                    "CREATED_AT_ASC" ->
                        Decode.succeed CreatedAtAsc

                    "CREATED_AT_DESC" ->
                        Decode.succeed CreatedAtDesc

                    "PRIMARY_KEY_ASC" ->
                        Decode.succeed PrimaryKeyAsc

                    "PRIMARY_KEY_DESC" ->
                        Decode.succeed PrimaryKeyDesc

                    _ ->
                        Decode.fail ("Invalid ContactsOrderBy type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : ContactsOrderBy -> String
toString enum____ =
    case enum____ of
        Natural ->
            "NATURAL"

        IdAsc ->
            "ID_ASC"

        IdDesc ->
            "ID_DESC"

        EmailAsc ->
            "EMAIL_ASC"

        EmailDesc ->
            "EMAIL_DESC"

        FirstnameAsc ->
            "FIRSTNAME_ASC"

        FirstnameDesc ->
            "FIRSTNAME_DESC"

        LastnameAsc ->
            "LASTNAME_ASC"

        LastnameDesc ->
            "LASTNAME_DESC"

        CreatedAtAsc ->
            "CREATED_AT_ASC"

        CreatedAtDesc ->
            "CREATED_AT_DESC"

        PrimaryKeyAsc ->
            "PRIMARY_KEY_ASC"

        PrimaryKeyDesc ->
            "PRIMARY_KEY_DESC"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe ContactsOrderBy
fromString enumString____ =
    case enumString____ of
        "NATURAL" ->
            Just Natural

        "ID_ASC" ->
            Just IdAsc

        "ID_DESC" ->
            Just IdDesc

        "EMAIL_ASC" ->
            Just EmailAsc

        "EMAIL_DESC" ->
            Just EmailDesc

        "FIRSTNAME_ASC" ->
            Just FirstnameAsc

        "FIRSTNAME_DESC" ->
            Just FirstnameDesc

        "LASTNAME_ASC" ->
            Just LastnameAsc

        "LASTNAME_DESC" ->
            Just LastnameDesc

        "CREATED_AT_ASC" ->
            Just CreatedAtAsc

        "CREATED_AT_DESC" ->
            Just CreatedAtDesc

        "PRIMARY_KEY_ASC" ->
            Just PrimaryKeyAsc

        "PRIMARY_KEY_DESC" ->
            Just PrimaryKeyDesc

        _ ->
            Nothing
