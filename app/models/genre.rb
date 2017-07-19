class Genre < ApplicationRecord
  has_many :tracks, dependent: :destroy

  validate :name, presence: :true, length: {maximum: 50}
end
