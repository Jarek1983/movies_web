class AddDescriptionToDirectors < ActiveRecord::Migration[5.2]
  def change
    add_column :directors, :description, :string
  end
end
