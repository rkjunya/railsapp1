class AddDetailToKintorePosts < ActiveRecord::Migration[5.2]
  def change
    add_column :kintore_posts, :detail, :string 
  end
end
