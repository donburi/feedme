json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :cuisine, :website, :contact_number, :email, :contact_person
  json.url vendor_url(vendor, format: :json)
end
