json.array!(@expense_accounts) do |expense_account|
  json.extract! expense_account, :id, :amount, :user_id, :date, :description
  json.url expense_account_url(expense_account, format: :json)
end
