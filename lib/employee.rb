
class Employee < ActiveRecord::Base
  belongs_to :store, 
    class_name: "Store",
    foreign_key: "store_id"
  validates :store, presence: true
  
  validates_associated :store

  # Employees must always have a first name present
  # Employees must always have a last name present
  # Employees must always have a store that they belong to (can't have an employee that is not assigned a store)      
  validates :first_name, :last_name, :store_id, presence: true

  # Employees have a hourly_rate that is a number (integer) between 40 and 200 
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 39, less_than: 201 }

  # worked for both after_ and before_create, latter is better for error; also works for before_save but this will also generate another password during update, so not ideal
  before_create :generate_password

  private

  def generate_password
    self.password = ('0'..'z').to_a.shuffle.last(8).join
  end
  
end
