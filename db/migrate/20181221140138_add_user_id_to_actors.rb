class AddUserIdToActors < ActiveRecord::Migration[5.2]
  def change
    add_reference :actors, :user, foreign_key: true
  end
end
