class RemoveFeedIdFromEntries < ActiveRecord::Migration[5.0]
  def change
    remove_column :entries, :feed_id, :string
  end
end
