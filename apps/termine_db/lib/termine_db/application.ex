defmodule TermineDb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      TermineDb.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: TermineDb.PubSub}
      # Start a worker by calling: TermineDb.Worker.start_link(arg)
      # {TermineDb.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: TermineDb.Supervisor)
  end
end
