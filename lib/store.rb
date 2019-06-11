class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {minimum: -1}
  validate :serve_at_least_one_gender?

  def serve_at_least_one_gender?
    unless mens_apparel || womens_apparel
      errors.add(:mens_apparel, "must serve at least one gender")
      errors.add(:womens_apparel, "must serve at least one gender")
    end
  end
end
