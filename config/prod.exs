use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, HardwareZone.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "lEhU6gEv3Abq7CIL0cb6zu4QOVIaS53Z+LPavbrPGriJ6Q+rHQEecb55fNVU9MfGMGb+h6gi/V3r1RP2/ZhvhQ=="

config :logger, :console,
  level: :info
