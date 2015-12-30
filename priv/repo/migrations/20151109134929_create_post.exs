defmodule Macaw.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :text
      add :public, :boolean, default: false
      add :category, :string
      add :tags, {:array, :string}
      add :plublished, :date
      add :user_id, :integer

      timestamps
    end

  end
end
