class Restaurants < ActiveRecord::Base
  has_many :users
  has_many :reviews
  has_many :reviewers, through: :reviews
end
