class AddConstraintsToActors < ActiveRecord::Migration[5.2]
  def change
  	change_column_null :actors, :name, :false
  	change_column_null :actors, :surname, :false
  end
end
