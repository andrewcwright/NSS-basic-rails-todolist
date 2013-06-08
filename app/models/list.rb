class List < ActiveRecord::Base
  attr_accessible :title
  has_many :listtasks
  has_many :tasks, :through => listtasks
end
