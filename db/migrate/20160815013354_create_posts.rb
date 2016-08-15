class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body, required: true
      t.references :channel, required: true, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
