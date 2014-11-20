json.array!(@fakturas) do |faktura|
  json.extract! faktura, :id, :naziv, :klijent_id
  json.url faktura_url(faktura, format: :json)
end
