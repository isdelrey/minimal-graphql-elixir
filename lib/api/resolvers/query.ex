defmodule BasicApp.API.Resolvers.Query do

  def get_true(_root, _args, _info) do
    {:ok, true}
  end
end