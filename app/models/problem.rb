class Problem < ActiveRecord::Base
  attr_accessible nil
  scope :published, lambda { where("published_at < ?", Time.now) }
  
  validates_presence_of :title, :body, :time_limit, :published_at
  validates_numericality_of :time_limit, :only_integer => true, :greater_than_or_equal_to => 1
  validates_uniqueness_of :title
  
  attr_accessible :title, :body, :time_limit, :published_at, :as => :admin
  
end
