class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string    :image_name
      t.string    :name
      t.integer   :price
      t.string    :coment
      t.timestamps
    end
  end
end
