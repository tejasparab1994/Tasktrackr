defmodule Tasktracker.Repo.Migrations.Maketable do
  use Ecto.Migration
  def change do
    create table(:users) do
      add(:name, :string, null: false)

      timestamps()
    end
     create(unique_index(:users, [:name]))
     create table(:tasks) do
       add(:title, :string, null: false)
       add(:body, :text, null: false)
       add(:completed, :boolean, null: false, default: false)
       add(:assigned_id, references(:users, on_delete: :delete_all))
       add(:time_taken, :integer,default: 0) 
       timestamps()
       end
 end
end
