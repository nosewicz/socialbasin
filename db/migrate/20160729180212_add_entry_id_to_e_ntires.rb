class AddEntryIdToENtires < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :entry_guid, :string
  end
end
