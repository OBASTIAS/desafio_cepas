json.extract! wines_oenologist, :id, :wine_id, :oenologist_id, :grade, :created_at, :updated_at
json.url wines_oenologist_url(wines_oenologist, format: :json)
