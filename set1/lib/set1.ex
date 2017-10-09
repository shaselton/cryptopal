defmodule Set1 do
  @moduledoc """
  Documentation for Set1.
  https://cryptopals.com/sets/1
  """

  def hex_to_base64(hex) do
    hex
    |> Base.decode16!(case: :mixed)
    |> Base.encode64
  end

  def fixed_xor(hex1, hex2) do
    :crypto.exor(
      Base.decode16!(hex1, case: :mixed),
      Base.decode16!(hex2, case: :mixed)
    )
    |> Base.encode16(case: :lower)
  end
end
