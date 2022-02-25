defmodule Tis.User do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query
  alias Tis.{User, Repo}

  schema "userss" do
    field(:name, :string)
    field(:status, :integer)

    timestamps()
  end

  def changeset(user, params \\ %{}) do
    user
    |> cast(params, [:name, :status])
    |> validate_required([:name, :status])
  end

  def user_insert do
    %__MODULE__{
      name: "Ergazy",
      status: 1
    }
    |> User.changeset()
    |> Repo.insert()
  end

  def get_user_by_id(id) do
    from(
      u in User,
      where: u.id == ^id,
      select: u
    )
    |> Repo.one()
  end
end
