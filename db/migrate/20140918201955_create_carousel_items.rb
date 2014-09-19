class CreateCarouselItems < ActiveRecord::Migration
  def change
    create_table :carousel_items do |t|
      t.text :img_url
      t.boolean :disable

      t.timestamps
    end
  end
end
