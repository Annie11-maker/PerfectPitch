class AddImageUrlToPitches < ActiveRecord::Migration[7.1]
  def change
    add_column :pitches, :image_url, :string
  end
end
