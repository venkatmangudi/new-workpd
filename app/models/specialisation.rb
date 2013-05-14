class Specialisation < ActiveRecord::Base
  attr_accessible :Specialisation_name

  has_many:qualifications

  has_many:graph_hospital_vacant_by_bands
end
