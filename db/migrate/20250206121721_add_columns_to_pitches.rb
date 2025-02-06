class AddColumnsToPitches < ActiveRecord::Migration[7.1]
  def change
    add_column :pitches, :pain_points, :text
    add_column :pitches, :target_audience, :text
    add_column :pitches, :solution, :text
  end
end
