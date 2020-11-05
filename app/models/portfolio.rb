class Portfolio < ApplicationRecord
  has_one_attached :profile_img
  has_many_attached :images
end
