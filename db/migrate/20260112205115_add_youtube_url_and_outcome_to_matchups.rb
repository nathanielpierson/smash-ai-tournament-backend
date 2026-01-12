class AddYoutubeUrlAndOutcomeToMatchups < ActiveRecord::Migration[8.0]
  def change
    add_column :matchups, :youtube_url, :string
    add_column :matchups, :outcome, :string
  end
end
