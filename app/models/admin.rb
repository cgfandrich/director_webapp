class Admin < ActiveRecord::Base
  # Silly basic validations
  validates :email, presence: true
  validates :email, length: { minimum: 10 }
  validates :email, uniqueness: true

  validates :password, presence: true
  validates :password, length: { minimum: 5 }

end
