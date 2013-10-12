class CreateMicroPosts < ActiveRecord::Migration
  def change
    create_table :micro_posts do |t|
      t.text :micro_post, limit: 250
      t.string :user_name

      t.timestamps
    end
  end
end
