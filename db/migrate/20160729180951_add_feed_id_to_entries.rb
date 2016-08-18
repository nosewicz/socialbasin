class AddFeedIdToEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :feed_id, :integer
  end
end
