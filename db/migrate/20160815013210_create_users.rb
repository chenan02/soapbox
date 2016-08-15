class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone_number, required: true
      t.string :password, required: true
      t.integer :frequency, required: true, default: 1

      t.timestamps null: false
    end
  end
end
