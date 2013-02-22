class Url < ActiveRecord::Base
  attr_accessible :url
  validates :url, :presence => true, :uniqueness => true, :length => { :minimum => 10, :maximum => 150 } , :uri => { :format => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix }
end
