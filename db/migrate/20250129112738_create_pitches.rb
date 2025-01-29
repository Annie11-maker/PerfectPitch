class CreatePitches < ActiveRecord::Migration[7.1]
  def change
    create_table :pitches do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
