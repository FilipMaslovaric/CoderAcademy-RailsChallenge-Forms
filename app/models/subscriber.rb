class Subscriber < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validate :no_kims_allowed

  def no_kims_allowed
    if name == "Kim Jong Un"
      errors.add(:name, "cannot be Kim Jong Un by decree of South Korea")
    end
  end

end
