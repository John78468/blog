class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :commentaire
      t.string :titre

      t.timestamps
    end
  end
end
