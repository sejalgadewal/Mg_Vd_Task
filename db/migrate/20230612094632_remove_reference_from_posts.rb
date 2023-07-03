class RemoveReferenceFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_reference :comments,:posts
  end
end
