defmodule PersonX do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the Ecto repository
      supervisor(PersonX.Repo, []),
      # Start the endpoint when the application starts
      supervisor(PersonX.Endpoint, []),
      # Start your own worker by calling: PersonX.Worker.start_link(arg1, arg2, arg3)
      # worker(PersonX.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PersonX.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PersonX.Endpoint.config_change(changed, removed)
    :ok
  end
end
