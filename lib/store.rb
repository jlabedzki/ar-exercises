class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :must_carry_clothing

  before_destroy :confirm_zero_employees

  def must_carry_clothing
    if !mens_apparel && !womens_apparel
      # errors.add("Your store must carry clothing")
      errors.add(:mens_apparel, "or womens apparel must be in your store.")
      errors.add(:womens_apparel, "or mens apparel must be in your store.")
    end
  end

  private

  def confirm_zero_employees
    if self.employees.count > 0
      return false
    end
  end 

end
