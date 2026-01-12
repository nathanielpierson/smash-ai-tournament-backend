class CreateMatches < ActiveRecord::Migration[8.0]
  def change
    create_table :matches do |t|
      t.integer :contestant_one_id
      t.string :contestant_two_id
      t.string :integer
      t.string :youtube_link
      t.string :result

      t.timestamps
    end
  end
end
