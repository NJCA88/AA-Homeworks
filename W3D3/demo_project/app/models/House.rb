class House < ActiveRecord::Base
  validates :address, presense: true
  has_many :residents,
  primary_key: :id
  foreign_key: :house_id
end
