defmodule Tis.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:userss) do
      add :name, :string
      add :status, :integer

      timestamps()
    end
  end
end
