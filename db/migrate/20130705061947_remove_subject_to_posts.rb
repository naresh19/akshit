class RemoveSubjectToPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :subject
  end

  def down
    add_column :posts, :subject, :string
  end
end
