json.array!(@grupos) do |grupo|
  json.extract! grupo, :id, :name, :lider
  json.url grupo_url(grupo, format: :json)
end
