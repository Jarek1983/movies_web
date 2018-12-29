class CreateJoinTableScreenwrtiterMovie < ActiveRecord::Migration[5.2]
  def change
    create_join_table :screenwriters, :movies do |t|
       t.index [:screenwriter_id, :movie_id]
       t.index [:movie_id, :screenwriter_id]
    end
  end
end
