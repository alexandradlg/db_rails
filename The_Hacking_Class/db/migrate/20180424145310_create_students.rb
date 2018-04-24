class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.timestamps
      t.belongs_to :course, index: true
    end
  end
end
