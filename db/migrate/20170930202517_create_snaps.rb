class CreateSnaps < ActiveRecord::Migration[5.1]
  def change
    create_table :snaps do |t|
      t.text :image
      t.integer :recipient_id
      t.boolean :viewed
      t.references :user, foreign_key: true
    end
  end
end
