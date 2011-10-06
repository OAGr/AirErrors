class Unit < ActiveRecord::Base
  #attr_accessible :name
  #attr_accessible :user_guide
  has_many :errors, :dependent => :destroy
  belongs_to :company
end
