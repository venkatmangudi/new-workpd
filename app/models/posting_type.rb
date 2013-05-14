class PostingType < ActiveRecord::Base
  attr_accessible :posting_type_name

  has_many:postings
end
