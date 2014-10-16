class CreateCartoons < ActiveRecord::Migration
  def change
    create_table :cartoons do |t|
      t.string :name
      t.text :characters
      t.string :photo_url
      t.boolean :onair

      t.timestamps
    end
  end
end
