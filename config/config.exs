# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, HardwareZone.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  https: false,
  secret_key_base: "lEhU6gEv3Abq7CIL0cb6zu4QOVIaS53Z+LPavbrPGriJ6Q+rHQEecb55fNVU9MfGMGb+h6gi/V3r1RP2/ZhvhQ==",
  catch_errors: true,
  debug_errors: false,
  error_controller: HardwareZone.PageController

# Session configuration
config :phoenix, HardwareZone.Router,
  session: [store: :cookie,
            key: "_hardware_zone_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
