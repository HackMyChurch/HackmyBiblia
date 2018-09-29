json.extract! conversation, :id, :name, :likes, :created_at, :updated_at
json.url conversation_url(conversation, format: :json)
