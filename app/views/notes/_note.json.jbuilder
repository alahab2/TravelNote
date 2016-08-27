json.extract! note, :id, :title, :location, :text, :created_at, :updated_at
json.url note_url(note, format: :json)