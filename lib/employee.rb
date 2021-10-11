class Employee < ActiveRecord::Base
  belongs_to :store
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true}
  validates :store, presence: true

  after_create :generate_password

  private

  def generate_password
    self.update(password: (0...8).map { (65 + rand(26)).chr }.join)
    # self.password = (0...8).map { (65 + rand(26)).chr }.join
  end
end
