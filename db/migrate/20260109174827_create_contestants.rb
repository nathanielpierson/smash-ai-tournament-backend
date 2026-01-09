class CreateContestants < ActiveRecord::Migration[8.0]
  def change
    create_table :contestants do |t|
      t.string :name
      t.string :character
      t.string :category
      t.string :slot-number

      t.timestamps
    end
  end
end
