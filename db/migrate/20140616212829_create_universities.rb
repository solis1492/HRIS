class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.string :career
      t.references :people, index: true

      t.timestamps
    end
  end
end
