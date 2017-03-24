class Review < ActiveRecord::Base
  belongs_to :reviewer, class_name: "User"
  belongs_to :restaurant
  validates :review_text, presence: true
  validates :reviewer_id, presence: true
  validates :restaurant_id, presence: true
end
