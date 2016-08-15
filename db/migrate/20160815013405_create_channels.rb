class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name, required: true
      t.text :description, required: true

      t.timestamps null: false
    end
  end
end
