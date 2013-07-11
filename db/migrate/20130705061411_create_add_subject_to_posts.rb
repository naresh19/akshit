class CreateAddSubjectToPosts < ActiveRecord::Migration
  def change
    create_table :add_subject_to_posts do |t|
      t.string :subject

      t.timestamps
    end
    add_index :add_subject_to_posts, :subject
  end
end
