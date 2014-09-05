class CreateStaticTexts < ActiveRecord::Migration
  def change
    create_table :static_texts do |t|
      t.text :title
      t.text :body
      t.boolean :active

      t.timestamps
    end
  end
end
