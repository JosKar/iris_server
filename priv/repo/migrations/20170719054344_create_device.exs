defmodule Iris.Repo.Migrations.CreateDevice do
  use Ecto.Migration

  def change do
    create table(:devices) do
      add :name, :string, null: false
      add :password, :string, null: false
      add :access_token, :string
      add :client_id, :string, null: false
      add :status, :boolean, default: false, null: false
      add :last_synced, :datetime

      add :user_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

  end
end
