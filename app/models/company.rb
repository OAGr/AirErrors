class Company < ActiveRecord::Base
  validates :name,  :presence => true
  has_many :units, :dependent => :destroy
  
end
