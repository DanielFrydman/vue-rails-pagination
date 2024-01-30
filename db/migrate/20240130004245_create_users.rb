class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :mother_first_name
      t.string :father_first_name
      t.datetime :birthday

      t.timestamps
    end
  end
end
