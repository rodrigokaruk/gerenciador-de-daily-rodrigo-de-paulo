json.array!(@integrantes) do |integrante|
  json.extract! integrante, :id, :membros, :grupo_id
  json.url integrante_url(integrante, format: :json)
end
