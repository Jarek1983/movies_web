class RemoveBirthdayFromGenre < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :birthday, :datetime
  end
end
