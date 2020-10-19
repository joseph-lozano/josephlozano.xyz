defmodule JL.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      JLWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: JL.PubSub},
      # Start the Endpoint (http/https)
      JLWeb.Endpoint
      # Start a worker by calling: JL.Worker.start_link(arg)
      # {JL.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: JL.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    JLWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
