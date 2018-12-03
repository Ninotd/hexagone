class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.references :shop, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
