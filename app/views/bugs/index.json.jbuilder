json.array!(@bugs) do |bug|
  json.extract! bug, :id, :title, :body, :resolved
  json.url bug_url(bug, format: :json)
end
