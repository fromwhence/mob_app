class Department < ApplicationRecord
  has_many :employees
  def number_of_employees
    employees.count
  end
end
