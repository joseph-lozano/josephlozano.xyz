defmodule ProxyWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ProxyWeb.Telemetry,
      # Start the Endpoint (http/https)
      {Phoenix.PubSub, name: ProxyWeb.PubSub},
      ProxyWeb.Endpoint
      # Start a worker by calling: ProxyWeb.Worker.start_link(arg)
      # {ProxyWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ProxyWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ProxyWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
