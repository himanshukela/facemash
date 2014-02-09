json.array!(@faces) do |face|
  json.extract! face, :name, :image, :elo_rating, :won, :lost
  json.url face_url(face , format: :json)
end
