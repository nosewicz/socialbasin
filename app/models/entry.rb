class Entry < ApplicationRecord
    belongs_to :feed
    
      
  before_create :too_many

  private
    def too_many
      Entry.first.destroy if Entry.count > 100
    end
end
