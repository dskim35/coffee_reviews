class Photo < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :review

  belongs_to :shop

  # Indirect associations

  # Validations

end
