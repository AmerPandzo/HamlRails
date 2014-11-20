json.array!(@klijents) do |klijent|
  json.extract! klijent, :id, :naziv
  json.url klijent_url(klijent, format: :json)
end
