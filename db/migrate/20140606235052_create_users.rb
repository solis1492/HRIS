class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.references :campaign, index: true
      t.references :role, index: true

      t.timestamps
    end
  end
end
