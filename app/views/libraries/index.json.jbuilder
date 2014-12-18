json.array!(@libraries) do |library|
  json.extract! library, :id, :name, :tutorial, :description, :showcase, :tags, :platform, :developer, :updated_by
  json.url library_url(library, format: :json)
end
