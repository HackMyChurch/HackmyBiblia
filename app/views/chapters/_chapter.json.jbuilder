json.extract! chapter, :id, :title, :description, :bible-ref, :url, :created_at, :updated_at
json.url chapter_url(chapter, format: :json)
