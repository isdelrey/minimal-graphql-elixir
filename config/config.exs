use Mix.Config

config :outbound_engine,
  ecto_repos: [BasicApp.Repo]

config :outbound_engine, BasicApp.API.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wOlxWYUmU0dJEoK+e89vPWiGaNJjHN9pxv3bk0zYqFD0Hh1I8TwaP3Eg5p9h/AWx",
  render_errors: [view: BasicApp.API.ErrorView, accepts: ~w(json)],
  pubsub: [name: BasicApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]
  
import_config "#{Mix.env}.exs"
