defmodule EctoAtom do
  @moduledoc """
  Custom type for `:atom` in Ecto schemas.

      defmodule Device do
        use Ecto.Schema
        schema "device" do
          field :type, EctoAtom
        end
      end
  """

  @behaviour Ecto.Type
  def type, do: :string

  def cast(value) when is_atom(value), do: {:ok, value}
  def cast(_), do: :error

  def load(value), do: {:ok, String.to_existing_atom(value)}

  def dump(value) when is_atom(value), do: {:ok, Atom.to_string(value)}
  def dump(_), do: :error

  def equal?(term1, term2), do: term1 == term2

  def embed_as(_format), do: :dump
end
