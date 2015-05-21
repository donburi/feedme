json.array!(@order_sheets) do |order_sheet|
  json.extract! order_sheet, :id, :order_template_id, :order_day
  json.url order_sheet_url(order_sheet, format: :json)
end
