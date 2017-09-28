# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :workday,
  default_country: nil

env_config = Path.expand("#{Mix.env}.exs", __DIR__)

if File.exists?(env_config) do
  import_config(env_config)
end
