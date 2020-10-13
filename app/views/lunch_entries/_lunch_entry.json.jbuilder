json.extract! lunch_entry, :id, :date, :title, :food_name, :author, :created_at, :updated_at
json.url lunch_entry_url(lunch_entry, format: :json)
