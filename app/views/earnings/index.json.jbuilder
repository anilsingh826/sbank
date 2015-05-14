json.array!(@earnings) do |earning|
  json.extract! earning, :id, :business, :amount, :user_id, :date
  json.url earning_url(earning, format: :json)
end
