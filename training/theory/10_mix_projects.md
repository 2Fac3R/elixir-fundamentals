# 10. Mix Projects

Mix is Elixir's build tool. It is used to create, compile, test, and manage dependencies for Elixir projects.

## Creating a New Project

To create a new project, use the `mix new` command.

```bash
$ mix new my_project
* creating README.md
* creating .formatter.exs
* creating .gitignore
* creating mix.exs
* creating lib
* creating lib/my_project.ex
* creating test
* creating test/test_helper.exs
* creating test/my_project_test.exs
```

This creates a standard directory structure:
- `lib/`: Where your application's source code goes.
- `test/`: Where the tests go.
- `mix.exs`: The project's configuration file.

## The `mix.exs` File

This file defines your project's configuration. The most important parts are:

- `project/0`: Defines the application name, version, starting file, etc.
- `application/0`: Defines the OTP application, including the module that starts it (usually the main Supervisor).
- `deps/0`: Defines the list of external dependencies.

```elixir
defmodule MyProject.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_project,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {MyProject.Application, []} # Starts MyProject.Application
    ]
  end

  # List of dependencies
  defp deps do
    [
      # {:dep_name, "~> 1.0"}
      {:jason, "~> 1.2"} # Example of a JSON dependency
    ]
  end
end
```

## Common Mix Commands

- `mix deps.get`: Downloads dependencies.
- `mix compile`: Compiles the project.
- `mix test`: Runs the tests.
- `mix format`: Formats the code according to the rules in `.formatter.exs`.
- `iex -S mix`: Starts an `iex` session with the project loaded, allowing you to interact with your modules.