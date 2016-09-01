defmodule ExConnect.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_connect,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [
      applications: [:logger, :slack, :exirc, :gproc, :httpoison],
       mod: {ExConnect, []}
    ]
  end

  defp deps do
    [
      {:slack, "~> 0.7.0"},
      {:websocket_client, git: "https://github.com/jeremyong/websocket_client"},
      {:exirc, "~> 0.11.0"},
      {:gproc, "~> 0.5.0"},
      {:httpoison, "~> 0.9.0", override: true}
    ]
  end
end
