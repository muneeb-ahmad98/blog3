json.extract! book, :id, :name, :auther, :created_at, :updated_at
json.url book_url(book, format: :json)
