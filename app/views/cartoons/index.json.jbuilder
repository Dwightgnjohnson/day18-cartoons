json.array!(@cartoons) do |cartoon|
  json.extract! cartoon, :id, :name, :characters, :photo_url, :onair
  json.url cartoon_url(cartoon, format: :json)
end
