class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
    	t.string  :title
    	t.string  :body
    	t.string  :url
    	t.integer :user_id
    	t.integer :category_id
    end
  end
end

