json.array!(@questions) do |question|
  json.extract! question, :id, :value, :order_template_id
  json.url question_url(question, format: :json)
end
