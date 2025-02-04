class AddTemplateToPitches < ActiveRecord::Migration[7.1]
  def change
    add_column :pitches, :template, :string
  end
end
