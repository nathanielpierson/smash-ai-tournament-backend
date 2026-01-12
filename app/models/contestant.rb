class Contestant < ApplicationRecord
  has_many :matchups_as_contestant_one, class_name: "Matchup", foreign_key: "contestant_one_id", dependent: :destroy
  has_many :matchups_as_contestant_two, class_name: "Matchup", foreign_key: "contestant_two_id", dependent: :destroy
  
  # Combined association to get all matchups where this contestant is involved
  def matchups
    Matchup.where("contestant_one_id = ? OR contestant_two_id = ?", id, id)
  end
end
