defmodule BasicApp.API.Router do
  use BasicApp.API, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BasicApp.API do
    pipe_through :api
  end


  forward "/", Absinthe.Plug.GraphiQL,
    schema: BasicApp.API.Schema,
    interface: :playground
end
