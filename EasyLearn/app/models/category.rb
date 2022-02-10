class Category < ApplicationRecord
  belongs_to :preferences
  has_many :events
  has_many :videos
end
