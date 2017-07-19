class Track < ApplicationRecord
  belong_to :track, dependent: :destroy
  belong_to :genre, dependent: :destroy

  validates :title, presence: true, length: {maximum: 150}
  validates :song, presence: true, allow_nil: true
  validates :user, presence: true
  validates :genre, presence: true
  validates :description, presence: true, allow_nil: true
  validates :image, presence: true, allow_nil: true
end
