### Minimal GraphQL API in Elixir

You might be here because you want to write a GraphQL API in Elixir using Absinthe but you can't find a minimal setup. You are desperate and you work something small that works.

This is your repo. No ecto, no controllers, no views, nothing else than what you need to get a query that returns true. The GraphQL API comes with GraphQL playground accessible from the same endpoint where the GraphQL API is served.

To use it:
* Install dependencies with `mix deps.get`
* Start Phoenix endpoint with `mix phx.server` or `iex -S mix phx.server`

To customise it:
Replace `BasicApp` with the name of your app.

Visit [`localhost:4000`](http://localhost:4000) from your browser and you will find the playground. Run your GraphQL requests against `/` as well.