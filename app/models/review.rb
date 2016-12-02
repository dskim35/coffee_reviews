class Review < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :dependent => :destroy

  belongs_to :user

  belongs_to :shop

  # Indirect associations

  # Validations

end
