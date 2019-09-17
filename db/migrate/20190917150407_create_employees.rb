class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.decimal :hourly_wage, precision: 5, scale: 2

      t.timestamps
    end
  end
end
