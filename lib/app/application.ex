defmodule BasicApp.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the endpoint when the application starts
      supervisor(BasicApp.API.Endpoint, [])
    ]

    opts = [strategy: :one_for_one, name: BasicApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    BasicApp.API.Endpoint.config_change(changed, removed)
    :ok
  end
end
