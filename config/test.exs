import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :todo_list, TodoList.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "todo_list_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :todo_list, TodoListWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "EqFBpcNOVMFJD/F8TnX/fKwSvQJaqoFX1YY2mbUedc85hzEW0mj7sqE40floF72V",
  server: false

# In test we don't send emails.
config :todo_list, TodoList.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
