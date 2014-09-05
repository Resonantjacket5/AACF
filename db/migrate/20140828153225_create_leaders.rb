class CreateLeaders < ActiveRecord::Migration
  def change
    create_table :leaders do |t|
      t.text :position
      t.text :name
      t.text :year
      t.text :major
      t.text :hometown
      t.text :email
      t.text :strange_fact
      t.text :interests
      t.text :leadership_position
      t.boolean :graduated
      t.boolean :contact_ok
      t.text :past_positions
      t.text :post_grad_email

      t.timestamps
    end
  end
end
