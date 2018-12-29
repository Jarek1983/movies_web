class AddDescriptionToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :description, :string
  end
end
