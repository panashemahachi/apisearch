json.array!(@platforms) do |platform|
  json.extract! platform, :id, :platform
  json.url platform_url(platform, format: :json)
end
