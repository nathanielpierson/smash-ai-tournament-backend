json.id matchup.id
json.number matchup.number
json.outcome matchup.outcome
json.youtube_url matchup.youtube_url
json.created_at matchup.created_at
json.updated_at matchup.updated_at

json.contestant_one do
  json.partial! "contestants/contestant", contestant: matchup.contestant_one
end
if matchup.contestant_one.icon_image.present?
  json.contestant_one_icon_image "#{request.base_url}#{matchup.contestant_one.icon_image}"
else
  json.contestant_one_icon_image nil
end

json.contestant_two do
  json.partial! "contestants/contestant", contestant: matchup.contestant_two
end
if matchup.contestant_two.icon_image.present?
  json.contestant_two_icon_image "#{request.base_url}#{matchup.contestant_two.icon_image}"
else
  json.contestant_two_icon_image nil
end
