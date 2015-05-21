json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :order_sheet_id, :response, :in_office, :notes
  json.url order_url(order, format: :json)
end
