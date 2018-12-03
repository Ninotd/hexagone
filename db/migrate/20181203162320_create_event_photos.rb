class CreateEventPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :event_photos do |t|
      t.string :photo
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
