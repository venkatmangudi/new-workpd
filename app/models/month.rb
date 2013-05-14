class Month < ActiveRecord::Base
  attr_accessible :month_name
  has_many:performaones
  has_many:hospital_performas
end
