json.array!(@formulatios) do |formulatio|
  json.extract! formulatio, :id, :pessoa_id, :tipo
  json.url formulatio_url(formulatio, format: :json)
end
