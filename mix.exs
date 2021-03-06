defmodule Rubix.Mixfile do
  use Mix.Project

  def project do
    [app: :rubix,
     version: "0.0.2",
     elixir: "~> 1.0",
     description: "A very simple (and barely-functioning) Ruby runner for Elixir",
     package: [
       contributors: ["Ryan S. Northrup"],
       licenses: ["MIT"],
       links: %{
                  "GitHub" => "https://github.com/YellowApple/Rubix"
              },
     ],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    []
  end
end
