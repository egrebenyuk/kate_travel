class Trip < ActiveRecord::Base
  has_many :destinations

  validates_presence_of :name

  belongs_to :user
end
