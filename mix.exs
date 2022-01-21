defmodule Pop3.MixProject do
  use Mix.Project
  def project() do
    [
      app: :pop3,
      version: "2.1.0",
      elixir: "~> 1.6",
      description: "POP3 email client.",
      package: package(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      name: "pop3",
      deps: deps()
    ]
  end

  def application() do
    [
      extra_applications: [:logger, :inets]
    ]
  end

  defp package() do
    [
      files: ~w(include lib src mix.exs LICENSE README.markdown),
      maintainers: ["TotallyNotMay"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/TotallyNotMay/pop3"}
    ]
  end

  def deps() do
    [
      {:erlyconv, github: "eugenehr/erlyconv"}
    ]
  end
end
