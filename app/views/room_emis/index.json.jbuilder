json.array!(@room_emis) do |room_emi|
  json.extract! room_emi, :id, :title, :amount, :user_id, :date
  json.url room_emi_url(room_emi, format: :json)
end
