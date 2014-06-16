class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.decimal :score
      t.decimal :WPM
      t.decimal :retention
      t.decimal :overall
      t.references :user, index: true
      t.references :campaign, index: true

      t.timestamps
    end
  end
end
