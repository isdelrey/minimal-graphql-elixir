defmodule BasicApp.API.Schema do
  use Absinthe.Schema

  alias BasicApp.API.Resolvers

  query do
    field :get_true, non_null(:string), do: resolve &Resolvers.Query.get_true/3
  end
end