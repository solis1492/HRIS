class CreateCallcenters < ActiveRecord::Migration
  def change
    create_table :callcenters do |t|
      t.string :name
      t.datetime :date
      t.references :people, index: true

      t.timestamps
    end
  end
end
