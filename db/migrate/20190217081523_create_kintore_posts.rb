class CreateKintorePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :kintore_posts do |t|
      t.text :content

      t.timestamps
    end
  end
end
