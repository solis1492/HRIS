class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :value
      t.references :person, index: true

      t.timestamps
    end
  end
end
