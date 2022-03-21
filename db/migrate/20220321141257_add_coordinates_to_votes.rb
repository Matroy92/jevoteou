class AddCoordinatesToVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :latitude, :float
    add_column :votes, :longitude, :float
  end
end
