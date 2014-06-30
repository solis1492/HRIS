class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :contact_type, index: true
      t.string :value

      t.timestamps
    end
  end
end
