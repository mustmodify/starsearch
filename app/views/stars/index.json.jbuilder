json.array!(@stars) do |star|
  json.extract! star, :id, :name, :twitter
  json.url star_url(star, format: :json)
end
