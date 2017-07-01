defmodule Iris do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(Iris.Repo, []),
      supervisor(Iris.Endpoint, []),
      supervisor(Mttq.Supervisor, [])
    ]

    opts = [strategy: :one_for_one, name: Iris.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    Iris.Endpoint.config_change(changed, removed)
    :ok
  end
end
