class Url < ActiveRecord::Base
  attr_accessible :url
  validates :url, :presence => true, :uniqueness => true, :length => { :minimum => 10, :maximum => 150 }
end
