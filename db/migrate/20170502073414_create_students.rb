class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :username
      t.string :password
      t.string :cpassword
      t.string :email

      t.timestamps
    end
  end
end
