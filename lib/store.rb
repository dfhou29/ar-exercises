class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validate :must_carry_at_least_one_type_of_apparel

  def must_carry_at_least_one_type_of_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "must carry at least one apparel")
    end
  end
end