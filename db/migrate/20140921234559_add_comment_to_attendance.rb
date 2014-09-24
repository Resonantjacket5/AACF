class AddCommentToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :comment, :text
  end
end
