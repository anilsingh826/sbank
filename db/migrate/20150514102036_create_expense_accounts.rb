class CreateExpenseAccounts < ActiveRecord::Migration
  def change
    create_table :expense_accounts do |t|
      t.decimal :amount
      t.integer :user_id
      t.timestamp :date
      t.text :description

      t.timestamps
    end
  end
end
