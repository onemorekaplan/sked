class Skedl < ActiveRecord::Base
  attr_accessible :cal_type, :description
  validates :description, :cal_type, presence: true
end
