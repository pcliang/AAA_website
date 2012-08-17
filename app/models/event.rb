class Event < ActiveRecord::Base
  # Until Rails 3.2, you have to add them yourself
  # some other attributes, e.g. id, timestamp, implicitly can be accessed, but not be defined in the class
  attr_accessible :date, :description, :title

  # ensure attributes that must be present
  validates_presence_of :title, :date, :description

  #
  validates_uniqueness_of :title

  # add an association between Event and Comments
  has_many :comments, :dependent => :destroy

end
