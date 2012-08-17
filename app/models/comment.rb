class Comment < ActiveRecord::Base
  attr_accessible :event_id, :details, :author

  validates_presence_of :event_id, :details, :author

  # add an association between Event and Comments
  belongs_to :event

end
