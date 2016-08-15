class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone_number
      t.integer :frequency

      t.timestamps null: false
    end
  end
end
