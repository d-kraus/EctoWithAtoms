# EctoWithAtoms

Custom type for using `:atom` with Ecto.
Simply add it to your schema

```elixir
defmodule Device do
  use Ecto.Schema
  schema "device" do
    field :type, EctoAtom
  end
end
```


## Installation

[Available in Hex](https://hex.pm/packages/ecto_with_atoms/1.0.0)

```elixir
def deps do
  [
    {:ecto_with_atoms, "~> 1.0.0"}
  ]
end
```


