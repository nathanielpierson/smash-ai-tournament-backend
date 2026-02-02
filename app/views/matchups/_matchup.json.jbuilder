json.id matchup.id
json.number matchup.number
json.outcome matchup.outcome
json.youtube_url matchup.youtube_url
json.created_at matchup.created_at
json.updated_at matchup.updated_at

json.contestant_one do
  json.partial! "contestants/contestant", contestant: matchup.contestant_one
end

json.contestant_two do
  json.partial! "contestants/contestant", contestant: matchup.contestant_two
end
