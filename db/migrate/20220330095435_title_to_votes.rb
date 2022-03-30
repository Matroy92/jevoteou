class TitleToVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :title, :string
  end
end
