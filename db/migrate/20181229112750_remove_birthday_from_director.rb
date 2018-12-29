class RemoveBirthdayFromDirector < ActiveRecord::Migration[5.2]
  def change
    remove_column :directors, :birthday, :date
  end
end
