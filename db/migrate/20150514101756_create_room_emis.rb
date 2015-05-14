class CreateRoomEmis < ActiveRecord::Migration
  def change
    create_table :room_emis do |t|
      t.string :title
      t.decimal :amount
      t.integer :user_id
      t.timestamp :date

      t.timestamps
    end
  end
end
