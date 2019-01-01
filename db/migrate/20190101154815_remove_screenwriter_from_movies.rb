class RemoveScreenwriterFromMovies < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :scenarist, :string
  end
end
