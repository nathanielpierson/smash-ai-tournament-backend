class AddMatchupNumber < ActiveRecord::Migration[8.0]
  def change
    add_column :matchups, :number, :integer
  end
end
