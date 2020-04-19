class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.belongs_to :user, foreign_key: true

      t.string     :title
      t.text       :body
      t.string     :source_title
      t.string     :source_url
      t.integer    :age_group, default: 0
      t.integer    :category, default: 0

      t.timestamps
    end
  end
end
