class RemoveMoviesFromActors < ActiveRecord::Migration[5.2]
  def change
    remove_column :actors, :movies, :string
  end
end
