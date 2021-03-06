defmodule Iris.Role do
  use Ecto.Schema
  import Ecto.Changeset

  schema "roles" do
    field :title, :string
    field :admin, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :admin])
    |> validate_required([:title, :admin])
  end
end
