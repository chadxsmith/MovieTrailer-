class Movie < ActiveRecord::Base
  has_many :actors
  has_many :trailers


end
