class ChangeFlarsToFlats < ActiveRecord::Migration[7.0]
  def change
    rename_table :flars, :flats
  end
end
