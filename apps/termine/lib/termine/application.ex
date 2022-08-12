defmodule Termine.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the PubSub system
      {Phoenix.PubSub, name: Termine.PubSub}
      # Start a worker by calling: Termine.Worker.start_link(arg)
      # {Termine.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Termine.Supervisor)
  end
end
