class RemoveImageUrlsFromPitches < ActiveRecord::Migration[7.1]
  def change
    remove_column :pitches, :image_urls, :json
  end
end
