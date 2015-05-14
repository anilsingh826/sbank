class CreateEarnings < ActiveRecord::Migration
  def change
    create_table :earnings do |t|
      t.string :business
      t.decimal :amount
      t.integer :user_id
      t.timestamp :date

      t.timestamps
    end
  end
end
