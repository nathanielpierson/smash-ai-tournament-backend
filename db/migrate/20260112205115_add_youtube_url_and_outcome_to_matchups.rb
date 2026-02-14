class AddYoutubeUrlAndOutcomeToMatchups < ActiveRecord::Migration[8.0]
  def change
    add_column :matchups, :youtube_url, :string unless column_exists?(:matchups, :youtube_url)
    add_column :matchups, :outcome, :string unless column_exists?(:matchups, :outcome)
  end
end
