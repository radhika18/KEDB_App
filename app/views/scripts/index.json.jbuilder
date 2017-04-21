json.array!(@scripts) do |script|
  json.extract! script, :id, :title, :procedure
  json.url script_url(script, format: :json)
end
