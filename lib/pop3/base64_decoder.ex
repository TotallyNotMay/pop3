defmodule Pop3.Base64Decoder do

   @moduledoc """
   Replaceable base64 decoder. Replace with your own implementation via the application config :pop3, base64_decoder: &lt;replacement&gt;

   After changing the config/config.exs run:
   * mix deps.compile --force pop3
   """

   @base64_decoder Application.get_env(:pop3, :base64_decoder, Pop3.Base64Decoder.Standard)

   defmodule Standard do

     @moduledoc "Standard Elixir base64 decoder"

     @doc "Decode base64 encoded text, ignoring carriage returns and linefeeds. Returns binary."
     @spec decode!(String.t) :: String.t
     def decode!(encoded_text) do
        Base.decode64!(encoded_text, ignore: :whitespace)
     end

   end

   @doc "Decode base64 encoded text, ignoring carriage returns and linefeeds. Returns binary."
   @spec decode!(String.t) :: String.t
   defdelegate decode!(encoded_text), to: @base64_decoder

end
