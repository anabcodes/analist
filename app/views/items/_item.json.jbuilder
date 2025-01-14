json.extract! item, :id, :list_id, :content, :done, :created_at, :updated_at
json.url item_url(item, format: :json)
