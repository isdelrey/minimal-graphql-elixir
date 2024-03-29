defmodule BasicApp.Mixfile do
  use Mix.Project

  def project do
    [
      app: :outbound_engine,
      version: "0.0.1",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {BasicApp.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.4.3"},
      {:cowboy, "~> 2.6"},
      {:absinthe_plug, "~> 1.4"},
      {:plug_cowboy, "~> 2.0"},
      {:poison, "~> 4.0"},
      {:absinthe, "~> 1.4"}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  defp aliases do
    [
    ]
  end
end
