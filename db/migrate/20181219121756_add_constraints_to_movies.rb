class AddConstraintsToMovies < ActiveRecord::Migration[5.2]
  def change
  	change_column_null :movies, :name, :false
  end
end
