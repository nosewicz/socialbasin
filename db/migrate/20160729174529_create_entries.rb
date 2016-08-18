class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.datetime :published
      t.string :url
      t.text :feed_id
      t.string :image

      t.timestamps
    end
  end
end
