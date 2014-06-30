class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstName
      t.string :middleName
      t.string :lastName
      t.string :secondLastName
      t.datetime :DOB
      t.string :HID
      t.integer :EnglishLevel
      t.integer :SpanishLevel

      t.timestamps
    end
  end
end
