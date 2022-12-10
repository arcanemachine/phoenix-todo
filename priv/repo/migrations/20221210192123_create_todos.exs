defmodule TodoList.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :content, :string
      add :is_completed, :boolean, default: false, null: false

      timestamps()
    end
  end
end
