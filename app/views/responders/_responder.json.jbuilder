json.extract! responder, :id, :name, :address, :created_at, :updated_at
json.url responder_url(responder, format: :json)
