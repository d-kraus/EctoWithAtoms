defmodule EctoAtom.MixProject do
  use Mix.Project

  @github_url "https://github.com/d-kraus/EctoWithAtoms"

  def project do
    [
      app: :ecto_with_atoms,
      version: "1.0.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: @github_url,
      homepage_url: @github_url,
      name: "EctoWithAtoms",
      docs: [
        main: "readme",
        extras: [
          "README.md"
        ]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 3.0"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end

  defp description() do
    """
    EctoWithAtoms adds a custom Ecto.Type to use :atoms in your schemas.
    """
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => @github_url},
      maintainers: ["Dennis Kraus"]
    ]
  end
end
