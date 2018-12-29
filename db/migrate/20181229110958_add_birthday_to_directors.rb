class AddBirthdayToDirectors < ActiveRecord::Migration[5.2]
  def change
    add_column :directors, :birthday, :date
  end
end
