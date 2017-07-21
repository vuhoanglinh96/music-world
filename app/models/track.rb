class Track < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :genre, dependent: :destroy

  mount_uploader :song, SongUploader

  validates :title, presence: true, length: {maximum: 150}
  validates :song, presence: true
  validates :user_id, presence: true, allow_nil: true
  validates :genre, presence: true
  validates :description, presence: true, allow_nil: true
  validates :image, presence: true, allow_nil: true
end
