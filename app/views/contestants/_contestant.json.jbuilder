json.id contestant.id
json.name contestant.name
json.character contestant.character
json.slot_number contestant.slot_number
json.category contestant.category
if contestant.icon_image.present?
  json.icon_image "#{request.base_url}#{contestant.icon_image}"
else
  json.icon_image nil
end