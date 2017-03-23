class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :reviewers, through: :reviews
  validates :name, presence: true
  validates :cuisine, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
  validates :user_id, presence: true
end
