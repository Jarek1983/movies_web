class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :surname
      t.datetime :birthday
      t.text :description
      t.string :country
      t.string :movies

      t.timestamps
    end
  end
end
