defmodule Macaw.User do
  use Macaw.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string
    field :account_type, :integer

    timestamps
  end

  @required_fields ~w(name email password account_type)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
