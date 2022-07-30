class CreateFlars < ActiveRecord::Migration[7.0]
  def change
    create_table :flars do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price_per_night
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
