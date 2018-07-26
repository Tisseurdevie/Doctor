class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :firt_name
      t.string :last_name
      t.integer :postal_code
      t.string :speciality

      t.timestamps
    end
  end
end
