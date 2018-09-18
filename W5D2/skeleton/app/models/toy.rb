class Toy < ApplicationRecord
  validates :toyable_id, :toyable_type, :name, presence: true

  belongs_to :corgi
  belongs_to :cat
end
