class Matchup < ApplicationRecord
  belongs_to :contestant_one, class_name: "Contestant"
  belongs_to :contestant_two, class_name: "Contestant"
end
