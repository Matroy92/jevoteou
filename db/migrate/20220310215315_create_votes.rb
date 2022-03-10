class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :address
      t.integer :zipcode

      t.timestamps
    end
  end
end
