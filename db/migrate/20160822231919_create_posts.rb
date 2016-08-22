class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.references :channel, index: true, foreign_key: true
    end
  end
end
