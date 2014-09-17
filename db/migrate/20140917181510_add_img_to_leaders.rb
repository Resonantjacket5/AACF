class AddImgToLeaders < ActiveRecord::Migration
  def change
    add_column :leaders, :img_url, :text
  end
end
