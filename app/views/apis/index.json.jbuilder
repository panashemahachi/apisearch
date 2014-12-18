json.array!(@apis) do |api|
  json.extract! api, :id, :name, :tutorial, :description, :showcase, :tags, :type
  json.url api_url(api, format: :json)
end
