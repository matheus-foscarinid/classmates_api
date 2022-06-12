class CreateClassmates < ActiveRecord::Migration[6.1]
  def change
    create_table :classmates do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :registration_number

      t.timestamps
    end
  end
end
