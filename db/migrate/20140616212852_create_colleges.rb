class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :career
      t.references :people, index: true

      t.timestamps
    end
  end
end
