class AddDepartmentIdToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :department_id, :integer
  end
end
