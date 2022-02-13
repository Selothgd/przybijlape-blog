json.extract! client, :id, :name, :pet, :content, :image, :created_at, :updated_at
json.url client_url(client, format: :json)
json.image url_for(client.image)
