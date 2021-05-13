# POC Contact App based on Elm, GraphQL

In this POC (Proof of Concept) I try to develop a Contact Web application based on this stack:

- Backend: [Postgraphile](https://github.com/graphile/postgraphile) and PostgreSQL
- Frontend: [Elm-lang](https://elm-lang.org/) and [`dillonkearns/elm-graphql`](https://github.com/dillonkearns/elm-graphql) library

Project status: see next steps in [issues](https://github.com/stephane-klein/poc-contact-app-elm-graphql/issues)

## Getting started

```sh
$ docker-compose up -d postgres
$ ./scripts/load-seed.sh
$ ./scripts/load-fixtures.sh
$ docker-compose up -d
```

Open <http://127.0.0.1:5000/graphiql>

Next go to [`frontend/`](frontend/) folder to start the frontend.
