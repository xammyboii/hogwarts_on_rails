class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
