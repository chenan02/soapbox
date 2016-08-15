class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :user, required: true, index: true, foreign_key: true
      t.references :channel, required: true, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
