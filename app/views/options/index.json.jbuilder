json.array!(@options) do |option|
  json.extract! option, :id, :question_id, :name, :description, :price
  json.url option_url(option, format: :json)
end
