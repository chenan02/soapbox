class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone_number
      t.string :password
      t.integer :frequency, default: 1

      t.timestamps null: false
    end
  end
end
