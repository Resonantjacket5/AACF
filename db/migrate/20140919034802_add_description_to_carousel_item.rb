class AddDescriptionToCarouselItem < ActiveRecord::Migration
  def change
    add_column :carousel_items, :description, :text
  end
end
