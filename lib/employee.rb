class Employee < ActiveRecord::Base
  valides :first_name, presence: true
  valides :last_name, presence: true
  belongs_to :store
end
