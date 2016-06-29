json.array!(@overheards) do |overheard|
  json.extract! overheard, :id, :title, :author, :location, :oh_entry
  json.url overheard_url(overheard, format: :json)
end
