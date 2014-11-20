json.array!(@stavkas) do |stavka|
  json.extract! stavka, :id, :naziv, :iznos, :faktura_id
  json.url stavka_url(stavka, format: :json)
end
