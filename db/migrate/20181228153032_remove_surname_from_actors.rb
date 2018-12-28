class RemoveSurnameFromActors < ActiveRecord::Migration[5.2]
  def change
    remove_column :actors, :surname, :string
  end
end
