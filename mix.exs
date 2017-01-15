defmodule Quickbooks.Mixfile do
  use Mix.Project

  def project do
    [app: :quickbooks,
     version: "0.0.1",
     elixir: "~> 1.3",
     description: description(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package ]
  end

  def application do
    [applications: [:logger],
     mod: {Quickbooks, []}]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["AlexVKO"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/alexvko/quickbooks-elixir"}
    ]
  end

  defp description do
    """
    Quickbooks Online REST API V3 for Elixir
    IN PROGRESS(Not for production yet)
    """
  end

  defp deps do
    []
  end
end
