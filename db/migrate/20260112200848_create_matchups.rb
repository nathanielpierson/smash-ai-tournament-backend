class CreateMatchups < ActiveRecord::Migration[8.0]
  def change
    create_table :matchups do |t|
      t.references :contestant_one, null: false, foreign_key: { to_table: :contestants }
      t.references :contestant_two, null: false, foreign_key: { to_table: :contestants }
      t.string :youtube_url
      t.string :outcome

      t.timestamps
    end
  end
end
