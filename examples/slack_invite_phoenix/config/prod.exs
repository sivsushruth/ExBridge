use Mix.Config

config :ex_connect_app, ExConnectApp.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/manifest.json"

config :logger, level: :info

import_config "prod.secret.exs"
