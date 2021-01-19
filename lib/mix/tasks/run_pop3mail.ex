defmodule Mix.Tasks.RunPop3 do
  use Mix.Task

  @shortdoc "Retrieve email from a POP3 mailbox"

  @moduledoc """
  Retrieve email from a POP3 mailbox.

  Examples:
    * mix run_pop3 --username=h.lorentz@gmail.com --max 100 --raw
    * mix run_pop3 --help
  """
  def run(args) do
    Pop3.cli(args)
  end
end
