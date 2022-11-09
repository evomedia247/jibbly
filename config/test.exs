import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :jibbly, JibblyWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "tN0H01g3aq85PrcS9nHfm4jXVQJ0wUbCH1v8LzY9RmPZI4287XJU0DdSJodgbkwf",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
